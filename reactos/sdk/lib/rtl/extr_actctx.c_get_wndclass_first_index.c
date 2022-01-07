
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct string_index {int dummy; } ;
struct TYPE_5__ {TYPE_1__* wndclass_section; } ;
struct TYPE_4__ {int index_offset; } ;
typedef int BYTE ;
typedef TYPE_2__ ACTIVATION_CONTEXT ;



__attribute__((used)) static inline struct string_index *get_wndclass_first_index(ACTIVATION_CONTEXT *actctx)
{
    return (struct string_index*)((BYTE*)actctx->wndclass_section + actctx->wndclass_section->index_offset);
}
