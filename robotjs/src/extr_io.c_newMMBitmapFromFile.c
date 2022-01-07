
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMImageType ;
typedef int MMIOError ;
typedef int * MMBitmapRef ;



 int kMMIOUnsupportedTypeError ;

 int * newMMBitmapFromBMP (char const*,int *) ;
 int * newMMBitmapFromPNG (char const*,int *) ;

MMBitmapRef newMMBitmapFromFile(const char *path,
                                MMImageType type,
                                MMIOError *err)
{
 switch (type) {
  case 129:
   return newMMBitmapFromBMP(path, err);
  case 128:
   return newMMBitmapFromPNG(path, err);
  default:
   if (err != ((void*)0)) *err = kMMIOUnsupportedTypeError;
   return ((void*)0);
 }
}
