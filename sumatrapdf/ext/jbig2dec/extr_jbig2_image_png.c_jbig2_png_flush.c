
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef int * png_FILE_p ;
struct TYPE_4__ {int io_ptr; } ;


 int fflush (int *) ;
 int png_get_io_ptr (TYPE_1__*) ;

__attribute__((used)) static void
jbig2_png_flush(png_structp png_ptr)
{



    png_FILE_p f = (png_FILE_p) png_get_io_ptr(png_ptr);


    if (f != ((void*)0))
        fflush(f);
}
