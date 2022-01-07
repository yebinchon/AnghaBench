
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_rect ;
struct TYPE_3__ {int mediabox; } ;
typedef TYPE_1__ fz_display_list ;
typedef int fz_context ;



fz_rect
fz_bound_display_list(fz_context *ctx, fz_display_list *list)
{
 return list->mediabox;
}
