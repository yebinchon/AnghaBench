
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int storable; } ;
typedef TYPE_1__ fz_display_list ;
typedef int fz_context ;


 TYPE_1__* fz_keep_storable (int *,int *) ;

fz_display_list *
fz_keep_display_list(fz_context *ctx, fz_display_list *list)
{
 return fz_keep_storable(ctx, &list->storable);
}
