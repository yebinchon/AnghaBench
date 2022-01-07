
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* media_class; char const* media_color; char const* media_type; char const* output_type; int advance_distance; int advance_media; int collate; int cut_media; int duplex; int insert_sheet; int jog; int leading_edge; int manual_feed; int media_position; int media_weight; int mirror_print; int negative_print; int num_copies; int orientation; int output_face_up; int separations; int tray_switch; int tumble; int media_type_num; int compression; int row_count; int row_feed; int row_step; char const* rendering_intent; char const* page_size_name; } ;
typedef TYPE_1__ fz_pwg_options ;
typedef int fz_output ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int fz_write_data (int *,int *,char const*,int) ;
 int fz_write_int32_be (int *,int *,int) ;

__attribute__((used)) static void
pwg_page_header(fz_context *ctx, fz_output *out, const fz_pwg_options *pwg,
  int xres, int yres, int w, int h, int bpp)
{
 static const char zero[64] = { 0 };
 int i;


 fz_write_data(ctx, out, pwg ? pwg->media_class : zero, 64);
 fz_write_data(ctx, out, pwg ? pwg->media_color : zero, 64);
 fz_write_data(ctx, out, pwg ? pwg->media_type : zero, 64);
 fz_write_data(ctx, out, pwg ? pwg->output_type : zero, 64);
 fz_write_int32_be(ctx, out, pwg ? pwg->advance_distance : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->advance_media : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->collate : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->cut_media : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->duplex : 0);
 fz_write_int32_be(ctx, out, xres);
 fz_write_int32_be(ctx, out, yres);


 for (i=284; i < 300; i += 4)
  fz_write_data(ctx, out, zero, 4);
 fz_write_int32_be(ctx, out, pwg ? pwg->insert_sheet : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->jog : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->leading_edge : 0);


 for (i=312; i < 320; i += 4)
  fz_write_data(ctx, out, zero, 4);
 fz_write_int32_be(ctx, out, pwg ? pwg->manual_feed : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->media_position : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->media_weight : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->mirror_print : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->negative_print : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->num_copies : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->orientation : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->output_face_up : 0);
 fz_write_int32_be(ctx, out, w * 72/ xres);
 fz_write_int32_be(ctx, out, h * 72/ yres);
 fz_write_int32_be(ctx, out, pwg ? pwg->separations : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->tray_switch : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->tumble : 0);
 fz_write_int32_be(ctx, out, w);
 fz_write_int32_be(ctx, out, h);
 fz_write_int32_be(ctx, out, pwg ? pwg->media_type_num : 0);
 fz_write_int32_be(ctx, out, bpp < 8 ? 1 : 8);
 fz_write_int32_be(ctx, out, bpp);
 fz_write_int32_be(ctx, out, (w * bpp + 7)/8);
 fz_write_int32_be(ctx, out, 0);
 switch (bpp)
 {
 case 1: fz_write_int32_be(ctx, out, 3); break;
 case 8: fz_write_int32_be(ctx, out, 18); break;
 case 24: fz_write_int32_be(ctx, out, 19); break;
 case 32: fz_write_int32_be(ctx, out, 6); break;
 default: fz_throw(ctx, FZ_ERROR_GENERIC, "pixmap bpp must be 1, 8, 24 or 32 to write as pwg");
 }
 fz_write_int32_be(ctx, out, pwg ? pwg->compression : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->row_count : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->row_feed : 0);
 fz_write_int32_be(ctx, out, pwg ? pwg->row_step : 0);
 fz_write_int32_be(ctx, out, bpp <= 8 ? 1 : (bpp>>8));
 for (i=424; i < 452; i += 4)
  fz_write_data(ctx, out, zero, 4);
 fz_write_int32_be(ctx, out, 1);
 fz_write_int32_be(ctx, out, 1);
 fz_write_int32_be(ctx, out, 1);
 fz_write_int32_be(ctx, out, 0);
 fz_write_int32_be(ctx, out, 0);
 fz_write_int32_be(ctx, out, w);
 fz_write_int32_be(ctx, out, h);
 for (i=480; i < 1668; i += 4)
  fz_write_data(ctx, out, zero, 4);
 fz_write_data(ctx, out, pwg ? pwg->rendering_intent : zero, 64);
 fz_write_data(ctx, out, pwg ? pwg->page_size_name : zero, 64);
}
