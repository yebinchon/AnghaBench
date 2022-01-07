
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t png_uint_32 ;
typedef int png_byte ;
struct TYPE_12__ {size_t const width; int height; int bytesPerPixel; size_t bytewidth; int * imageBuffer; } ;
struct TYPE_11__ {int blue; int green; int red; } ;
struct TYPE_10__ {int row_count; int free_row_pointers; int ** row_pointers; int * info_ptr; int * png_ptr; } ;
typedef TYPE_1__* PNGWriteInfoRef ;
typedef int PNGWriteInfo ;
typedef TYPE_2__ MMRGBColor ;
typedef TYPE_3__* MMBitmapRef ;


 size_t ADD_PADDING (size_t const) ;
 TYPE_2__* MMRGBColorRefAtPoint (TYPE_3__*,size_t,size_t) ;
 scalar_t__ MMRGB_IS_BGR ;
 int PNG_COLOR_TYPE_RGB ;
 int PNG_COMPRESSION_TYPE_DEFAULT ;
 int PNG_FILTER_TYPE_DEFAULT ;
 int PNG_INTERLACE_NONE ;
 int PNG_LIBPNG_VER_STRING ;
 int assert (int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int * png_create_info_struct (int *) ;
 int * png_create_write_struct (int ,int *,int *,int *) ;
 int png_destroy_write_struct (int **,int **) ;
 int png_jmpbuf (int *) ;
 void* png_malloc (int *,size_t const) ;
 int png_set_IHDR (int *,int *,size_t,size_t,int,int ,int ,int ,int ) ;
 int png_set_bgr (int *) ;
 int png_set_rows (int *,int *,int **) ;
 scalar_t__ setjmp (int ) ;

__attribute__((used)) static PNGWriteInfoRef createPNGWriteInfo(MMBitmapRef bitmap)
{
 PNGWriteInfoRef info = malloc(sizeof(PNGWriteInfo));
 png_uint_32 y;

 if (info == ((void*)0)) return ((void*)0);
 info->png_ptr = ((void*)0);
 info->info_ptr = ((void*)0);
 info->row_pointers = ((void*)0);

 assert(bitmap != ((void*)0));


 info->png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING,
                                         ((void*)0), ((void*)0), ((void*)0));
 if (info->png_ptr == ((void*)0)) goto bail;


 if (setjmp(png_jmpbuf(info->png_ptr))) {
  png_destroy_write_struct(&(info->png_ptr), &(info->info_ptr));
  goto bail;
 }


 info->info_ptr = png_create_info_struct(info->png_ptr);
 if (info->info_ptr == ((void*)0)) {
  png_destroy_write_struct(&(info->png_ptr), ((void*)0));
  goto bail;
 }


 png_set_IHDR(info->png_ptr,
              info->info_ptr,
              (png_uint_32)bitmap->width,
              (png_uint_32)bitmap->height,
              8,
              PNG_COLOR_TYPE_RGB,
              PNG_INTERLACE_NONE,
              PNG_COMPRESSION_TYPE_DEFAULT,
              PNG_FILTER_TYPE_DEFAULT);

 info->row_count = bitmap->height;
 info->row_pointers = png_malloc(info->png_ptr,
                                 sizeof(png_byte *) * info->row_count);

 if (bitmap->bytesPerPixel == 3) {

  for (y = 0; y < info->row_count; ++y) {
   info->row_pointers[y] = bitmap->imageBuffer + (bitmap->bytewidth * y);
  }
  info->free_row_pointers = 0;


  if (MMRGB_IS_BGR) {
   png_set_bgr(info->png_ptr);
  }
 } else {

  const size_t bytesPerPixel = 3;
  const size_t bytewidth = ADD_PADDING(bitmap->width * bytesPerPixel);

  for (y = 0; y < info->row_count; ++y) {
   png_uint_32 x;
   png_byte *row_ptr = png_malloc(info->png_ptr, bytewidth);
   info->row_pointers[y] = row_ptr;
   for (x = 0; x < bitmap->width; ++x) {
    MMRGBColor *color = MMRGBColorRefAtPoint(bitmap, x, y);
    row_ptr[0] = color->red;
    row_ptr[1] = color->green;
    row_ptr[2] = color->blue;

    row_ptr += bytesPerPixel;
   }
  }
  info->free_row_pointers = 1;
 }

 png_set_rows(info->png_ptr, info->info_ptr, info->row_pointers);
 return info;

bail:
 if (info != ((void*)0)) free(info);
 return ((void*)0);
}
