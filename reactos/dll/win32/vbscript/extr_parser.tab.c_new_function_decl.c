
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int statement_t ;
struct TYPE_7__ {int hres; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef scalar_t__ function_type_t ;
struct TYPE_8__ {int is_public; int * next_prop_func; int * next; int * body; int * args; scalar_t__ type; int const* name; } ;
typedef TYPE_2__ function_decl_t ;
typedef int arg_decl_t ;
typedef int WCHAR ;


 int E_FAIL ;
 int FIXME (char*) ;
 scalar_t__ FUNC_DEFGET ;
 scalar_t__ FUNC_PROPGET ;
 unsigned int STORAGE_IS_DEFAULT ;
 unsigned int STORAGE_IS_PRIVATE ;
 TYPE_2__* parser_alloc (TYPE_1__*,int) ;

__attribute__((used)) static function_decl_t *new_function_decl(parser_ctx_t *ctx, const WCHAR *name, function_type_t type,
        unsigned storage_flags, arg_decl_t *arg_decl, statement_t *body)
{
    function_decl_t *decl;

    if(storage_flags & STORAGE_IS_DEFAULT) {
        if(type == FUNC_PROPGET) {
            type = FUNC_DEFGET;
        }else {
            FIXME("Invalid default property\n");
            ctx->hres = E_FAIL;
            return ((void*)0);
        }
    }

    decl = parser_alloc(ctx, sizeof(*decl));
    if(!decl)
        return ((void*)0);

    decl->name = name;
    decl->type = type;
    decl->is_public = !(storage_flags & STORAGE_IS_PRIVATE);
    decl->args = arg_decl;
    decl->body = body;
    decl->next = ((void*)0);
    decl->next_prop_func = ((void*)0);
    return decl;
}
