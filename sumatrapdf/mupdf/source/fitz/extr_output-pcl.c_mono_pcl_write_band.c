
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int features; } ;
struct TYPE_4__ {int w; int yres; int * out; } ;
struct TYPE_5__ {int num_blank_lines; unsigned char* prev; unsigned char* mode2buf; unsigned char* mode3buf; scalar_t__ top_of_page; TYPE_3__ options; TYPE_1__ super; } ;
typedef TYPE_2__ mono_pcl_band_writer ;
typedef TYPE_3__ fz_pcl_options ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_band_writer ;


 int MIN_SKIP_LINES ;
 int PCL3_SPACING ;
 int PCL_ANY_SPACING ;
 int PCL_MODE_2_COMPRESSION ;
 int PCL_MODE_3_COMPRESSION ;
 char* from2to3 ;
 char* from3to2 ;
 int fz_write_data (int *,int *,unsigned char const*,int) ;
 int fz_write_printf (int *,int *,char*,int) ;
 int fz_write_string (int *,int *,char*) ;
 int memset (unsigned char*,int ,int) ;
 int mode2compress (unsigned char*,unsigned char const*,int) ;
 int mode3compress (unsigned char*,unsigned char const*,unsigned char*,int) ;
 int penalty_from2to3 ;
 int penalty_from3to2 ;

__attribute__((used)) static void
mono_pcl_write_band(fz_context *ctx, fz_band_writer *writer_, int ss, int band_start, int band_height, const unsigned char *data)
{
 mono_pcl_band_writer *writer = (mono_pcl_band_writer *)writer_;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int yres = writer->super.yres;
 const unsigned char *out_data;
 int y, rmask, line_size;
 int num_blank_lines;
 int compression = -1;
 unsigned char *prev = ((void*)0);
 unsigned char *mode2buf = ((void*)0);
 unsigned char *mode3buf = ((void*)0);
 int out_count;
 const fz_pcl_options *pcl;

 if (!out)
  return;

 num_blank_lines = writer->num_blank_lines;
 rmask = ~0 << (-w & 7);
 line_size = (w + 7)/8;
 prev = writer->prev;
 mode2buf = writer->mode2buf;
 mode3buf = writer->mode3buf;
 pcl = &writer->options;


 for (y = 0; y < band_height; y++, data += ss)
 {
  const unsigned char *end_data = data + line_size;

  if ((end_data[-1] & rmask) == 0)
  {
   end_data--;
   while (end_data > data && end_data[-1] == 0)
    end_data--;
  }
  if (end_data == data)
  {

   num_blank_lines++;
   continue;
  }



  if (writer->top_of_page)
  {
   writer->top_of_page = 0;

   if (pcl->features & PCL_ANY_SPACING)
   {
    if (num_blank_lines > 0)
     fz_write_printf(ctx, out, "\033*p+%dY", num_blank_lines);

    fz_write_string(ctx, out, "\033*r1A");
   }
   else if (pcl->features & PCL_MODE_3_COMPRESSION)
   {

    fz_write_string(ctx, out, "\033*r1A");
    for (; num_blank_lines; num_blank_lines--)
     fz_write_string(ctx, out, "\033*b0W");
   }
   else
   {

    fz_write_string(ctx, out, "\033*r1A");
    for (; num_blank_lines; num_blank_lines--)
     fz_write_string(ctx, out, "\033*bW");
   }
  }


  else if (num_blank_lines != 0)
  {
   if ((num_blank_lines < MIN_SKIP_LINES && compression != 3) ||
     !(pcl->features & PCL_ANY_SPACING))
   {
    int mode_3ns = ((pcl->features & PCL_MODE_3_COMPRESSION) && !(pcl->features & PCL_ANY_SPACING));
    if (mode_3ns && compression != 2)
    {

     fz_write_string(ctx, out, from3to2);
     compression = 2;
    }
    if (pcl->features & PCL_MODE_3_COMPRESSION)
    {

     fz_write_string(ctx, out, "\033*b1Y");
     num_blank_lines--;
    }
    if (mode_3ns)
    {
     for (; num_blank_lines; num_blank_lines--)
      fz_write_string(ctx, out, "\033*b0W");
    }
    else
    {
     for (; num_blank_lines; num_blank_lines--)
      fz_write_string(ctx, out, "\033*bW");
    }
   }
   else if (pcl->features & PCL3_SPACING)
    fz_write_printf(ctx, out, "\033*p+%dY", num_blank_lines * yres);
   else
    fz_write_printf(ctx, out, "\033*b%dY", num_blank_lines);

   memset(prev, 0, line_size);
  }
  num_blank_lines = 0;


  if (pcl->features & PCL_MODE_3_COMPRESSION)
  {



   int count3 = mode3compress(mode3buf, data, prev, line_size);
   int count2 = mode2compress(mode2buf, data, line_size);
   int penalty3 = (compression == 3 ? 0 : penalty_from2to3);
   int penalty2 = (compression == 2 ? 0 : penalty_from3to2);

   if (count3 + penalty3 < count2 + penalty2)
   {
    if (compression != 3)
     fz_write_string(ctx, out, from2to3);
    compression = 3;
    out_data = (unsigned char *)mode3buf;
    out_count = count3;
   }
   else
   {
    if (compression != 2)
     fz_write_string(ctx, out, from3to2);
    compression = 2;
    out_data = (unsigned char *)mode2buf;
    out_count = count2;
   }
  }
  else if (pcl->features & PCL_MODE_2_COMPRESSION)
  {
   out_data = mode2buf;
   out_count = mode2compress(mode2buf, data, line_size);
  }
  else
  {
   out_data = data;
   out_count = line_size;
  }


  fz_write_printf(ctx, out, "\033*b%dW", out_count);
  fz_write_data(ctx, out, out_data, out_count);
 }

 writer->num_blank_lines = num_blank_lines;
}
