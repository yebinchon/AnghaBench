
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_class_entry ;


 long YAF_ERR_BASE ;
 size_t YAF_EXCEPTION_OFFSET (long) ;
 int ** yaf_buildin_exceptions ;
 int * yaf_exception_ce ;
 int zend_throw_exception (int *,char*,long) ;

void yaf_throw_exception(long code, char *message) {
 zend_class_entry *base_exception = yaf_exception_ce;

 if ((code & YAF_ERR_BASE) == YAF_ERR_BASE
   && yaf_buildin_exceptions[YAF_EXCEPTION_OFFSET(code)]) {
  base_exception = yaf_buildin_exceptions[YAF_EXCEPTION_OFFSET(code)];
 }

 zend_throw_exception(base_exception, message, code);
}
