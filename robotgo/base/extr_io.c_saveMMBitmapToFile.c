
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMImageType ;
typedef int MMBitmapRef ;




 int saveMMBitmapAsBMP (int ,char const*) ;
 int saveMMBitmapAsPNG (int ,char const*) ;

int saveMMBitmapToFile(MMBitmapRef bitmap, const char *path, MMImageType type){
 switch (type) {
  case 129:
   return saveMMBitmapAsBMP(bitmap, path);
  case 128:
   return saveMMBitmapAsPNG(bitmap, path);
  default:
   return -1;
 }
}
