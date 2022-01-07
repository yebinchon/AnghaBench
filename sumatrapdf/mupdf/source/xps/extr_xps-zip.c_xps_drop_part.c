
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; struct TYPE_4__* name; } ;
typedef TYPE_1__ xps_part ;
typedef int xps_document ;
typedef int fz_context ;


 int fz_drop_buffer (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

void
xps_drop_part(fz_context *ctx, xps_document *doc, xps_part *part)
{
 fz_free(ctx, part->name);
 fz_drop_buffer(ctx, part->data);
 fz_free(ctx, part);
}
