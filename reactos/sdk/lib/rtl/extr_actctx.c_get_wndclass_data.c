
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wndclass_redirect_data {int dummy; } ;
struct string_index {int data_offset; } ;
struct TYPE_3__ {scalar_t__ wndclass_section; } ;
typedef int BYTE ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;



__attribute__((used)) static inline struct wndclass_redirect_data *get_wndclass_data(ACTIVATION_CONTEXT *ctxt, struct string_index *index)
{
    return (struct wndclass_redirect_data*)((BYTE*)ctxt->wndclass_section + index->data_offset);
}
