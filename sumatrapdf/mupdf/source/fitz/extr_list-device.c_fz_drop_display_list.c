
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int storable; } ;
typedef TYPE_1__ fz_display_list ;
typedef int fz_context ;


 int fz_defer_reap_end (int *) ;
 int fz_defer_reap_start (int *) ;
 int fz_drop_storable (int *,int *) ;

void
fz_drop_display_list(fz_context *ctx, fz_display_list *list)
{
 fz_defer_reap_start(ctx);
 fz_drop_storable(ctx, &list->storable);
 fz_defer_reap_end(ctx);
}
