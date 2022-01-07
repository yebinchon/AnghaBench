
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct io_data {size_t size; int * buffer; int member_2; int member_1; int * member_0; } ;
struct TYPE_4__ {int info_ptr; int png_ptr; } ;
typedef TYPE_1__* PNGWriteInfoRef ;
typedef int * MMBitmapRef ;


 int PNG_TRANSFORM_IDENTITY ;
 int assert (int ) ;
 TYPE_1__* createPNGWriteInfo (int *) ;
 int destroyPNGWriteInfo (TYPE_1__*) ;
 int png_append_data ;
 int png_set_write_fn (int ,struct io_data*,int *,int *) ;
 int png_write_png (int ,int ,int ,int *) ;

uint8_t *createPNGData(MMBitmapRef bitmap, size_t *len)
{
 PNGWriteInfoRef info = ((void*)0);
 struct io_data data = {((void*)0), 0, 0};

 assert(bitmap != ((void*)0));
 assert(len != ((void*)0));

 if ((info = createPNGWriteInfo(bitmap)) == ((void*)0)) return ((void*)0);

 png_set_write_fn(info->png_ptr, &data, &png_append_data, ((void*)0));
 png_write_png(info->png_ptr, info->info_ptr, PNG_TRANSFORM_IDENTITY, ((void*)0));

 destroyPNGWriteInfo(info);

 *len = data.size;
 return data.buffer;
}
