
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bidx; struct TYPE_3__* dst; struct TYPE_3__* ref; int chain; } ;
typedef TYPE_1__ fz_faxd ;
typedef int fz_context ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;
 int fz_unread_byte (int *,int ) ;

__attribute__((used)) static void
close_faxd(fz_context *ctx, void *state_)
{
 fz_faxd *fax = (fz_faxd *)state_;
 int i;


 i = (32 - fax->bidx) / 8;
 while (i--)
  fz_unread_byte(ctx, fax->chain);

 fz_drop_stream(ctx, fax->chain);
 fz_free(ctx, fax->ref);
 fz_free(ctx, fax->dst);
 fz_free(ctx, fax);
}
