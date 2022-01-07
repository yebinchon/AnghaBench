
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int parser_ctx_t ;
typedef int dim_list_t ;
struct TYPE_4__ {int * next; int * dims; int is_array; int const* name; } ;
typedef TYPE_1__ dim_decl_t ;
typedef int WCHAR ;
typedef int BOOL ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static dim_decl_t *new_dim_decl(parser_ctx_t *ctx, const WCHAR *name, BOOL is_array, dim_list_t *dims)
{
    dim_decl_t *decl;

    decl = parser_alloc(ctx, sizeof(*decl));
    if(!decl)
        return ((void*)0);

    decl->name = name;
    decl->is_array = is_array;
    decl->dims = dims;
    decl->next = ((void*)0);
    return decl;
}
