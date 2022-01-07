
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_LOCK_FREETYPE ;
 int fz_lock (int *,int ) ;
 int set_hb_context (int *) ;

void fz_hb_lock(fz_context *ctx)
{
 fz_lock(ctx, FZ_LOCK_FREETYPE);

 set_hb_context(ctx);
}
