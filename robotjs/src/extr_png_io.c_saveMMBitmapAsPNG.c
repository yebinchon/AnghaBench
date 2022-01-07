
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int info_ptr; int png_ptr; } ;
typedef TYPE_1__* PNGWriteInfoRef ;
typedef int MMBitmapRef ;
typedef int FILE ;


 int PNG_TRANSFORM_IDENTITY ;
 TYPE_1__* createPNGWriteInfo (int ) ;
 int destroyPNGWriteInfo (TYPE_1__*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int png_init_io (int ,int *) ;
 int png_write_png (int ,int ,int ,int *) ;

int saveMMBitmapAsPNG(MMBitmapRef bitmap, const char *path)
{
 FILE *fp = fopen(path, "wb");
 PNGWriteInfoRef info;
 if (fp == ((void*)0)) return -1;

 if ((info = createPNGWriteInfo(bitmap)) == ((void*)0)) {
  fclose(fp);
  return -1;
 }

 png_init_io(info->png_ptr, fp);
 png_write_png(info->png_ptr, info->info_ptr, PNG_TRANSFORM_IDENTITY, ((void*)0));
 fclose(fp);

 destroyPNGWriteInfo(info);
 return 0;
}
