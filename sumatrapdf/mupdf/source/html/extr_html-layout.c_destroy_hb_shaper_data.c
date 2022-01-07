
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_hb_lock (int *) ;
 int fz_hb_unlock (int *) ;
 int hb_font_destroy (void*) ;

__attribute__((used)) static void
destroy_hb_shaper_data(fz_context *ctx, void *handle)
{
 fz_hb_lock(ctx);
 hb_font_destroy(handle);
 fz_hb_unlock(ctx);
}
