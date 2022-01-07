
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int yaf_view_t ;


 int YAF_VIEW_PROPERTY_NAME_TPLVARS ;
 int ZEND_STRL (int ) ;
 int Z_ARRVAL_P (int *) ;
 int Z_TRY_ADDREF_P (int *) ;
 int yaf_view_simple_ce ;
 int * zend_hash_update (int ,int *,int *) ;
 int * zend_read_property (int ,int *,int ,int,int *) ;

int yaf_view_simple_assign_single(yaf_view_t *view, zend_string *name, zval *value) {
 zval *tpl_vars = zend_read_property(yaf_view_simple_ce, view, ZEND_STRL(YAF_VIEW_PROPERTY_NAME_TPLVARS), 1, ((void*)0));
 if (zend_hash_update(Z_ARRVAL_P(tpl_vars), name, value) != ((void*)0)) {
  Z_TRY_ADDREF_P(value);
  return 1;
 }
 return 0;
}
