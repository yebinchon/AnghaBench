
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pwg_options ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_bitmap ;


 int fz_write_bitmap_as_pwg_page (int *,int *,int const*,int const*) ;
 int fz_write_pwg_file_header (int *,int *) ;

void
fz_write_bitmap_as_pwg(fz_context *ctx, fz_output *out, const fz_bitmap *bitmap, const fz_pwg_options *pwg)
{
 fz_write_pwg_file_header(ctx, out);
 fz_write_bitmap_as_pwg_page(ctx, out, bitmap, pwg);
}
