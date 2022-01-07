
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef scalar_t__ png_size_t ;
typedef int png_bytep ;
typedef int png_FILE_p ;
struct TYPE_5__ {int io_ptr; } ;


 scalar_t__ fwrite (int ,int,scalar_t__,int ) ;
 int png_error (TYPE_1__*,char*) ;
 int png_get_io_ptr (TYPE_1__*) ;

__attribute__((used)) static void
jbig2_png_write_data(png_structp png_ptr, png_bytep data, png_size_t length)
{
    png_size_t check;




    png_FILE_p f = (png_FILE_p) png_get_io_ptr(png_ptr);


    check = fwrite(data, 1, length, f);
    if (check != length) {
        png_error(png_ptr, "write error");
    }
}
