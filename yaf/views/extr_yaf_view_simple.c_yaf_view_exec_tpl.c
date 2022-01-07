
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zval ;
struct TYPE_10__ {int scope; } ;
typedef TYPE_1__ zend_op_array ;
typedef int zend_function ;
struct TYPE_11__ {int * symbol_table; } ;
typedef TYPE_2__ zend_execute_data ;
typedef int zend_array ;
typedef int yaf_view_t ;


 int * EG (int ) ;
 int E_WARNING ;
 scalar_t__ FAILURE ;
 int PHP_OUTPUT_HANDLER_STDFLAGS ;
 scalar_t__ SUCCESS ;
 scalar_t__ UNEXPECTED (int ) ;
 int ZEND_ADD_CALL_FLAG (TYPE_2__*,int ) ;
 int ZEND_CALL_HAS_SYMBOL_TABLE ;
 int ZEND_CALL_NESTED_CODE ;
 int ZEND_CALL_TOP ;
 int ZVAL_UNDEF (int *) ;
 int Z_OBJCE_P (int *) ;
 int Z_OBJ_P (int *) ;
 int exception ;
 int php_error_docref (char*,int ,char*) ;
 scalar_t__ php_output_discard () ;
 int php_output_end () ;
 scalar_t__ php_output_get_contents (int *) ;
 scalar_t__ php_output_start_user (int *,int ,int ) ;
 int zend_execute_ex (TYPE_2__*) ;
 int zend_init_execute_data (TYPE_2__*,TYPE_1__*,int *) ;
 int zend_vm_stack_free_call_frame (TYPE_2__*) ;
 TYPE_2__* zend_vm_stack_push_call_frame (int,int *,int ,int ,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int yaf_view_exec_tpl(yaf_view_t *view, zend_op_array *op_array, zend_array *symbol_table, zval* ret) {
 zend_execute_data *call;
 zval result;

 ZVAL_UNDEF(&result);

 op_array->scope = Z_OBJCE_P(view);

 call = zend_vm_stack_push_call_frame(ZEND_CALL_NESTED_CODE



   ,
   (zend_function*)op_array, 0, op_array->scope, Z_OBJ_P(view));

 call->symbol_table = symbol_table;

 if (ret && php_output_start_user(((void*)0), 0, PHP_OUTPUT_HANDLER_STDFLAGS) == FAILURE) {
  php_error_docref("ref.outcontrol", E_WARNING, "failed to create buffer");
  return 0;
 }

 zend_init_execute_data(call, op_array, &result);

 ZEND_ADD_CALL_FLAG(call, ZEND_CALL_TOP);
 zend_execute_ex(call);
 zend_vm_stack_free_call_frame(call);

 zval_ptr_dtor(&result);

 if (UNEXPECTED(EG(exception) != ((void*)0))) {
  if (ret) {
   php_output_discard();
  }
  return 0;
 }

 if (ret) {
  if (php_output_get_contents(ret) == FAILURE) {
   php_output_end();
   php_error_docref(((void*)0), E_WARNING, "Unable to fetch ob content");
   return 0;
  }

  if (php_output_discard() != SUCCESS ) {
   return 0;
  }
 }

 return 1;
}
