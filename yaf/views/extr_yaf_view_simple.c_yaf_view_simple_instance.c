
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int yaf_view_t ;


 scalar_t__ IS_ABSOLUTE_PATH (int ,int ) ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_STRING ;
 int YAF_ERR_TYPE_ERROR ;
 int YAF_VIEW_PROPERTY_NAME_OPTS ;
 int YAF_VIEW_PROPERTY_NAME_TPLDIR ;
 int YAF_VIEW_PROPERTY_NAME_TPLVARS ;
 int ZEND_STRL (int ) ;
 scalar_t__ Z_ISUNDEF_P (int *) ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int array_init (int *) ;
 int object_init_ex (int *,int ) ;
 int yaf_trigger_error (int ,char*) ;
 int yaf_view_simple_ce ;
 int zend_update_property (int ,int *,int ,int *) ;
 int zval_ptr_dtor (int *) ;

yaf_view_t *yaf_view_simple_instance(yaf_view_t *this_ptr, zval *tpl_dir, zval *options) {
 zval tpl_vars;

 if (Z_ISUNDEF_P(this_ptr)) {
  object_init_ex(this_ptr, yaf_view_simple_ce);
 }

 array_init(&tpl_vars);
 zend_update_property(yaf_view_simple_ce, this_ptr, ZEND_STRL(YAF_VIEW_PROPERTY_NAME_TPLVARS), &tpl_vars);
 zval_ptr_dtor(&tpl_vars);

 if (tpl_dir && Z_TYPE_P(tpl_dir) == IS_STRING) {
  if (IS_ABSOLUTE_PATH(Z_STRVAL_P(tpl_dir), Z_STRLEN_P(tpl_dir))) {
   zend_update_property(yaf_view_simple_ce, this_ptr, ZEND_STRL(YAF_VIEW_PROPERTY_NAME_TPLDIR), tpl_dir);
  } else {

   yaf_trigger_error(YAF_ERR_TYPE_ERROR, "Expects an absolute path for templates directory");
   return ((void*)0);
  }
 }

 if (options && IS_ARRAY == Z_TYPE_P(options)) {
  zend_update_property(yaf_view_simple_ce, this_ptr, ZEND_STRL(YAF_VIEW_PROPERTY_NAME_OPTS), options);
 }

 return this_ptr;
}
