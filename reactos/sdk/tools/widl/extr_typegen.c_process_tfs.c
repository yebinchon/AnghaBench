
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_pred_t ;
typedef int statement_list_t ;
typedef int FILE ;


 int for_each_iface (int const*,int ,int ,int *,int ,unsigned int*) ;
 int process_tfs_iface ;

__attribute__((used)) static unsigned int process_tfs(FILE *file, const statement_list_t *stmts, type_pred_t pred)
{
    unsigned int typeformat_offset = 2;
    for_each_iface(stmts, process_tfs_iface, pred, file, 0, &typeformat_offset);
    return typeformat_offset + 1;
}
