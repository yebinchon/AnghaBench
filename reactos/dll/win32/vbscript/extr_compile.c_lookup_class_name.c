
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* classes; } ;
typedef TYPE_1__ compile_ctx_t ;
struct TYPE_5__ {int name; struct TYPE_5__* next; } ;
typedef TYPE_2__ class_desc_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strcmpiW (int ,int const*) ;

__attribute__((used)) static BOOL lookup_class_name(compile_ctx_t *ctx, const WCHAR *name)
{
    class_desc_t *iter;

    for(iter = ctx->classes; iter; iter = iter->next) {
        if(!strcmpiW(iter->name, name))
            return TRUE;
    }

    return FALSE;
}
