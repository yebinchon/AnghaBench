
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_5__ {unsigned int val; struct TYPE_5__* next; } ;
typedef TYPE_1__ dim_list_t ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static dim_list_t *new_dim(parser_ctx_t *ctx, unsigned val, dim_list_t *next)
{
    dim_list_t *ret;

    ret = parser_alloc(ctx, sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->val = val;
    ret->next = next;
    return ret;
}
