<!DOCTYPE html>
<html>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-12 text-center mt-2">
            <h1>Customer</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-10 offset-md-1">
            <!-- general form elements -->
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title">Add Customer</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form class="m-0 input_form" id="form_action" role="form" action="" method="post">
                <div class="card-body row">
                  <div class="col-md-12 ">
                    <div class="row">
                      <div class="form-group col-md-12">
                        <label>Customer Name</label>
                        <input type="text" class="form-control form-control-sm" name="customer_company" id="customer_company" value="<?php if(isset($customer_company)){ echo $customer_company; } ?>" placeholder="" required>
                      </div>
                      <div class="form-group col-md-12">
                        <label>Company Name</label>
                        <input type="text" class="form-control form-control-sm" name="customer_company" id="customer_company" value="<?php if(isset($customer_company)){ echo $customer_company; } ?>" placeholder="" required>
                      </div>
                      <div class="form-group col-md-12">
                        <label>Customer Address</label>
                      <textarea name="name" class="form-control" rows="3" cols="90"></textarea>
                    </div>

                      <div class="form-group col-md-6">
                        <label>Mobile No. 1</label>
                        <input type="text" class="form-control form-control-sm" name="customer_gstin" id="customer_gstin" value="<?php if(isset($customer_gstin)){ echo $customer_gstin; } ?>" placeholder="" required>
                      </div>
                      <div class="form-group col-md-6">
                        <label>Mobile No. 2</label>
                        <input type="text" class="form-control form-control-sm" name="customer_pan" id="customer_pan" value="<?php if(isset($customer_pan)){ echo $customer_pan; } ?>" placeholder="" required>
                      </div>
                      <div class="form-group col-md-6">
                        <label>PAN No.</label>
                        <input type="text" class="form-control form-control-sm" name="customer_gstin" id="customer_gstin" value="<?php if(isset($customer_gstin)){ echo $customer_gstin; } ?>" placeholder="" required>
                      </div>
                      <div class="form-group col-md-6">
                        <label>GST No.</label>
                        <input type="text" class="form-control form-control-sm" name="customer_pan" id="customer_pan" value="<?php if(isset($customer_pan)){ echo $customer_pan; } ?>" placeholder="" required>
                      </div>

                      <div class="form-group col-md-6">
                        <label>Email</label>
                        <input type="email" class="form-control form-control-sm" name="customer_gstin" id="customer_gstin" value="<?php if(isset($customer_gstin)){ echo $customer_gstin; } ?>" placeholder="" required>
                      </div>
                      <div class="form-group col-md-6">
                        <label>Website</label>
                        <input type="text" class="form-control form-control-sm" name="customer_pan" id="customer_pan" value="<?php if(isset($customer_pan)){ echo $customer_pan; } ?>" placeholder="" required>
                      </div>

                      <div class="form-group col-md-6">
                        <label>Birthdate</label>
                        <input type="text" class="form-control form-control-sm" name="customer_gstin" id="customer_gstin" value="<?php if(isset($customer_gstin)){ echo $customer_gstin; } ?>" placeholder="" required>
                      </div>
                      <div class="form-group col-md-6">
                        <label>Anniversary date</label>
                        <input type="text" class="form-control form-control-sm" name="customer_pan" id="customer_pan" value="<?php if(isset($customer_pan)){ echo $customer_pan; } ?>" placeholder="" required>
                      </div>

                      <div class="form-group col-md-2 mb-0">
                          <label for="">Gender : </label>
                        </div>

                        <div class="form-group col-md-2 mb-0">
                            <div class="form-check">
                              <input class="form-check-input" value="Male" type="radio" checked="" name="member_gender">
                              Male
                            </div>
                          </div>

                          <div class="form-group col-md-2">
                            <div class="form-check">
                              <input class="form-check-input" value="Female" type="radio" name="member_gender">
                              Female
                            </div>
                          </div>
                        </div>
                          <div class="row">
                            <div class="col-md-6">
                            <label>Upload Documents :- </label>
                            </div>
                          <div class="col-md-6 text-right">
                            <button type="button" id="add_row" class="btn btn-sm btn-primary mb-3 mr-1" width="150px">Add Row</button>
                          </div>
                          </div>

                          <div class="" style="overflow-x:auto;">
                            <table id="myTable" class="table table-bordered tbl_list">
                                  <thead>
                                  <tr>
                                    <th>Select Documents Type</th>
                                    <th>Document No.</th>
                                    <th>Image Upload</th>
                                    <th class="wt_50"></th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <td>
                                        <select class="form-control form-control-sm" name="stock_type_id" id="stock_type_id" data-placeholder="Select Type">
                                          <option value="">Select Document Type </option>
                                          <option >1</option>
                                          <option >2</option>
                                          <option >3</option>
                                        </select>
                                      </td>
                                      <td class="wt_150">
                                        <input type="text" class="form-control form-control-sm" name="stock_no" id="stock_no" value="" placeholder="" required>
                                      </td>
                                        <td>  <input type="file" name="product_img" id="product_img" class="form-control form-control-sm" id="exampleInputFile"></td>
                                      <td class="wt_50"></td>
                                    </tr>
                                  </tbody>
                                </table>
                          </div>
                <div class="card-footer row">
                  <div class="col-md-6">
                    <div class="custom-control custom-checkbox ml-2">
                      <input class="custom-control-input" type="checkbox" name="customer_status" id="customer_status" value="1" checked>
                      <label for="customer_status" class="custom-control-label">Active</label>
                    </div>
                  </div>
                  <div class="col-md-6 text-right">
                    <?php if(isset($update)){ ?>
                      <button id="btn_update" type="submit" class="btn btn-primary">Update </button>
                    <?php } else{ ?>
                      <button id="btn_save" type="submit" class="btn btn-success px-4">Save</button>
                    <?php } ?>
                    <a href="<?php echo base_url() ?>User/customer_list" class="btn btn-default ml-4">Cancel</a>
                  </div>
                </div>
              </form>
            </div>

          </div>
          <!--/.col (left) -->
          <!-- right column -->
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
  </div>
  <script src="<?php echo base_url(); ?>assets/plugins/sweetalert2/sweetalert2.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/plugins/toastr/toastr.min.js"></script>

<script type="text/javascript">
// Check Mobile Duplication..
  var customer_mobile1 = $('#customer_mobile').val();
  $('#customer_mobile').on('change',function(){
    var customer_mobile = $(this).val();
    $.ajax({
      url:'<?php echo base_url(); ?>User/check_duplication',
      type: 'POST',
      data: {"column_name":"customer_mobile",
             "column_val":customer_mobile,
             "table_name":"user"},
      context: this,
      success: function(result){
        if(result > 0){
          $('#customer_mobile').val(customer_mobile1);
          toastr.error(customer_mobile+' Mobile No Exist.');
        }
      }
    });
  });

// Check Email Duplication..
  var customer_email1 = $('#mobile').val();
  $('#customer_email').on('change',function(){
    var customer_email = $(this).val();
    $.ajax({
      url:'<?php echo base_url(); ?>User/check_duplication',
      type: 'POST',
      data: {"column_name":"customer_email",
             "column_val":customer_email,
             "table_name":"user"},
      context: this,
      success: function(result){
        if(result > 0){
          $('#customer_email').val(customer_email1);
          toastr.error(customer_email+' Email Id Exist.');
        }
      }
    });
  });
</script>
<script type="text/javascript">
  // Add Row...
  <?php if(isset($update)){ ?>
  var i = <?php echo $i-1; ?>
  <?php } else { ?>
  var i = 1;
  <?php } ?>

  $('#add_row').click(function(){
    i++;
    var row = ''+
    '<tr>'+
      '<td>'+
        '<select class="form-control form-control-sm" name="stock_type_id" id="stock_type_id" data-placeholder="Select Type">'+
          '<option value="">Select Document Type </option>'+
          '<option >1</option>'+
          '<option >2</option>'+
          '<option >3</option>'+
        '</select>'+
      '</td>'+
      '<td class="wt_150">'+
        '<input type="text" class="form-control form-control-sm" name="stock_no" id="stock_no" value="" placeholder="" required>'+
      '</td>'+

      '<td class="wt_100">'+
        '<input type="file" name="product_img" id="product_img" class="form-control form-control-sm" id="exampleInputFile">'+
      '</td>'+
      '<td class="wt_50"><a class="rem_row"><i class="fa fa-trash text-danger"></i></a></td>'+
    '</tr>';
    $('#myTable').append(row);
  });

  $('#myTable').on('click', '.rem_row', function () {
    $(this).closest('tr').remove();
  });

</script>
</body>
</html>
