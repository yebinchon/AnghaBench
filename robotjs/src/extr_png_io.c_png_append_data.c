
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_data {int size; int allocedSize; int * buffer; } ;
typedef int png_struct ;
typedef int png_size_t ;
typedef int png_byte ;


 int assert (int ) ;
 int memcpy (int *,int *,int) ;
 struct io_data* png_get_io_ptr (int *) ;
 int * png_malloc (int *,int) ;
 int * realloc (int *,int) ;

void png_append_data(png_struct *png_ptr,
                     png_byte *new_data,
                     png_size_t length)
{
 struct io_data *data = png_get_io_ptr(png_ptr);
 data->size += length;


 if (data->buffer == ((void*)0)) {
  data->allocedSize = data->size;
  data->buffer = png_malloc(png_ptr, data->allocedSize);
  assert(data->buffer != ((void*)0));
 } else if (data->allocedSize < data->size) {
  do {

   data->allocedSize <<= 1;
  } while (data->allocedSize < data->size);

  data->buffer = realloc(data->buffer, data->allocedSize);
 }


 memcpy(data->buffer + data->size - length, new_data, length);
}
