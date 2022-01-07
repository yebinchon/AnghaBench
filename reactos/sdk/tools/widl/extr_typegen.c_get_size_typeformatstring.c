
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_pred_t ;
typedef int statement_list_t ;


 int FALSE ;
 unsigned int process_tfs (int *,int const*,int ) ;
 int set_all_tfswrite (int ) ;

unsigned int get_size_typeformatstring(const statement_list_t *stmts, type_pred_t pred)
{
    set_all_tfswrite(FALSE);
    return process_tfs(((void*)0), stmts, pred);
}
