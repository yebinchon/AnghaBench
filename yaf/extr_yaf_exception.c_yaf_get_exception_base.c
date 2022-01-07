
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_class_entry ;


 int CG (int ) ;
 scalar_t__ SUCCESS ;
 int class_table ;
 int * spl_ce_RuntimeException ;
 int * zend_exception_get_default () ;
 scalar_t__ zend_hash_find (int ,char*,int,void**) ;

zend_class_entry * yaf_get_exception_base(int root) {
 return zend_exception_get_default();
}
