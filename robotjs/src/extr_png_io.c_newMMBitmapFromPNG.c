
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int png_uint_32 ;
typedef int png_struct ;
typedef int png_info ;
typedef int png_byte ;
typedef int header ;
struct TYPE_2__ {int blue; int green; int red; } ;
typedef TYPE_1__ MMRGBColor ;
typedef int MMPNGReadError ;
typedef int * MMBitmapRef ;
typedef int FILE ;


 int ADD_PADDING (int) ;
 int PNG_COLOR_MASK_ALPHA ;
 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_GRAY_ALPHA ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_INFO_tRNS ;
 int PNG_LIBPNG_VER_STRING ;
 int* calloc (int,int) ;
 int * createMMBitmap (int*,int,int,int,int,int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (int*,int,int,int *) ;
 int free (int*) ;
 int kPNGAccessError ;
 int kPNGGenericError ;
 int kPNGInvalidHeaderError ;
 int kPNGReadError ;
 int * png_create_info_struct (int *) ;
 int * png_create_read_struct (int ,int *,int *,int *) ;
 int png_destroy_read_struct (int **,int **,int *) ;
 int png_get_bit_depth (int *,int *) ;
 int png_get_color_type (int *,int *) ;
 int png_get_image_height (int *,int *) ;
 int png_get_image_width (int *,int *) ;
 int png_get_rowbytes (int *,int *) ;
 scalar_t__ png_get_valid (int *,int *,int ) ;
 int png_init_io (int *,int *) ;
 int png_jmpbuf (int *) ;
 int* png_malloc (int *,int ) ;
 int png_read_end (int *,int *) ;
 int png_read_info (int *,int *) ;
 int png_read_row (int *,int*,int *) ;
 int png_set_expand_gray_1_2_4_to_8 (int *) ;
 int png_set_gray_to_rgb (int *) ;
 int png_set_palette_to_rgb (int *) ;
 int png_set_sig_bytes (int *,int) ;
 int png_set_strip_16 (int *) ;
 int png_set_strip_alpha (int *) ;
 int png_set_tRNS_to_alpha (int *) ;
 scalar_t__ png_sig_cmp (int*,int ,int) ;
 scalar_t__ setjmp (int ) ;

MMBitmapRef newMMBitmapFromPNG(const char *path, MMPNGReadError *err)
{
 FILE *fp;
 uint8_t header[8];
 png_struct *png_ptr = ((void*)0);
 png_info *info_ptr = ((void*)0);
 png_byte bit_depth, color_type;
 uint8_t *row, *bitmapData;
 uint8_t bytesPerPixel;
 png_uint_32 width, height, y;
 uint32_t bytewidth;

 if ((fp = fopen(path, "rb")) == ((void*)0)) {
  if (err != ((void*)0)) *err = kPNGAccessError;
  return ((void*)0);
 }


 if (err != ((void*)0)) *err = kPNGGenericError;


 if (fread(header, 1, sizeof header, fp) == 0) {
  if (err != ((void*)0)) *err = kPNGReadError;
  goto bail;
 } else if (png_sig_cmp(header, 0, sizeof(header)) != 0) {
  if (err != ((void*)0)) *err = kPNGInvalidHeaderError;
  goto bail;
 }

 png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, ((void*)0), ((void*)0), ((void*)0));
 if (png_ptr == ((void*)0)) goto bail;

 info_ptr = png_create_info_struct(png_ptr);
 if (info_ptr == ((void*)0)) goto bail;


 if (setjmp(png_jmpbuf(png_ptr))) {
  goto bail;
 }

 png_init_io(png_ptr, fp);


 png_set_sig_bytes(png_ptr, sizeof header);

 png_read_info(png_ptr, info_ptr);


 bit_depth = png_get_bit_depth(png_ptr, info_ptr);
 color_type = png_get_color_type(png_ptr, info_ptr);


 if (color_type == PNG_COLOR_TYPE_PALETTE) {
  png_set_palette_to_rgb(png_ptr);
 }


 if (color_type == PNG_COLOR_TYPE_GRAY && bit_depth < 8) {
  png_set_expand_gray_1_2_4_to_8(png_ptr);
 } else if (bit_depth == 16) {
  png_set_strip_16(png_ptr);
 }


 if (png_get_valid(png_ptr, info_ptr, PNG_INFO_tRNS)) {
  png_set_tRNS_to_alpha(png_ptr);
 }


 if (color_type == PNG_COLOR_TYPE_GRAY ||
     color_type == PNG_COLOR_TYPE_GRAY_ALPHA) {
  png_set_gray_to_rgb(png_ptr);
 }


 if (color_type & PNG_COLOR_MASK_ALPHA) {
  png_set_strip_alpha(png_ptr);
 }


 width = png_get_image_width(png_ptr, info_ptr);
 height = png_get_image_height(png_ptr, info_ptr);
 bytesPerPixel = 3;
 bytewidth = ADD_PADDING(width * bytesPerPixel);


 bitmapData = calloc(1, bytewidth * height);
 row = png_malloc(png_ptr, png_get_rowbytes(png_ptr, info_ptr));
 if (bitmapData == ((void*)0) || row == ((void*)0)) goto bail;
 for (y = 0; y < height; ++y) {
  png_uint_32 x;
  const uint32_t rowOffset = y * bytewidth;
  uint8_t *rowptr = row;
  png_read_row(png_ptr, (png_byte *)row, ((void*)0));

  for (x = 0; x < width; ++x) {
   const uint32_t colOffset = x * bytesPerPixel;
   MMRGBColor *color = (MMRGBColor *)(bitmapData + rowOffset + colOffset);
   color->red = *rowptr++;
   color->green = *rowptr++;
   color->blue = *rowptr++;
  }
 }
 free(row);


 png_read_end(png_ptr, ((void*)0));
 png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
 fclose(fp);

 return createMMBitmap(bitmapData, width, height,
                       bytewidth, bytesPerPixel * 8, bytesPerPixel);

bail:
 png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
 fclose(fp);
 return ((void*)0);
}
