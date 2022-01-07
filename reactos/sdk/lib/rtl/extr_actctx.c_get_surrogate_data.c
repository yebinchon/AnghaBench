
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct guid_index {int data_offset; } ;
struct clrsurrogate_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ clrsurrogate_section; } ;
typedef int BYTE ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;



__attribute__((used)) static inline struct clrsurrogate_data *get_surrogate_data(ACTIVATION_CONTEXT *actctx, const struct guid_index *index)
{
    return (struct clrsurrogate_data*)((BYTE*)actctx->clrsurrogate_section + index->data_offset);
}
