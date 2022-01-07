
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_4__ {scalar_t__ is_const; int cval; } ;
typedef TYPE_1__ expr_t ;


 int FALSE ;
 int FC_RP ;
 int * append_chain_type (int *,int *) ;
 int * type_new_array (int *,int *,int ,int ,TYPE_1__*,int *,int ) ;

__attribute__((used)) static type_t *append_array(type_t *chain, expr_t *expr)
{
    type_t *array;

    if (!expr)
        return chain;



    array = type_new_array(((void*)0), ((void*)0), FALSE, expr->is_const ? expr->cval : 0,
            expr->is_const ? ((void*)0) : expr, ((void*)0), FC_RP);

    return append_chain_type(chain, array);
}
