
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_pred_t ;
typedef int statement_list_t ;


 int for_each_iface (int const*,int ,int ,int *,int ,unsigned int*) ;
 int get_size_procformatstring_iface ;

unsigned int get_size_procformatstring(const statement_list_t *stmts, type_pred_t pred)
{
    unsigned int size = 1;
    for_each_iface(stmts, get_size_procformatstring_iface, pred, ((void*)0), 0, &size);
    return size;
}
