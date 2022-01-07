
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_LOCK_FREETYPE ;
 int fz_unlock (int *,int ) ;
 int set_hb_context (int *) ;

void fz_hb_unlock(fz_context *ctx)
{
 set_hb_context(((void*)0));

 fz_unlock(ctx, FZ_LOCK_FREETYPE);
}
