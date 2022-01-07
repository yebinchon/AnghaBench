
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_array ;


 int zend_array_destroy (int *) ;

__attribute__((used)) static inline void yaf_view_destroy_symtable(zend_array *symbol_table) {
 zend_array_destroy(symbol_table);
}
