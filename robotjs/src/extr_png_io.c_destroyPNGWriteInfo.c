
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t row_count; int info_ptr; int png_ptr; struct TYPE_5__** row_pointers; scalar_t__ free_row_pointers; } ;
typedef TYPE_1__* PNGWriteInfoRef ;


 int assert (int ) ;
 int free (TYPE_1__*) ;
 int png_destroy_write_struct (int *,int *) ;
 int png_free (int ,TYPE_1__**) ;

__attribute__((used)) static void destroyPNGWriteInfo(PNGWriteInfoRef info)
{
 assert(info != ((void*)0));
 if (info->row_pointers != ((void*)0)) {
  if (info->free_row_pointers) {
   size_t y;
   for (y = 0; y < info->row_count; ++y) {
    free(info->row_pointers[y]);
   }
  }
  png_free(info->png_ptr, info->row_pointers);
 }

 png_destroy_write_struct(&(info->png_ptr), &(info->info_ptr));
 free(info);
}
