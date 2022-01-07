
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* malloc (size_t) ;
 int memcpy (void*,void*,size_t) ;

void flipBitmapData(void *data, size_t width, size_t height, size_t bytewidth)
{
 size_t top, bottom;
 void *topP;
 void *bottomP;
 void *tempbuf;

 if (height <= 1) return;

 top = 0;
 bottom = height - 1;
 tempbuf = malloc(bytewidth);
 if (tempbuf == ((void*)0)) return;

 while (top < bottom) {
  topP = (void *)((top * bytewidth) + (intptr_t)data);
  bottomP = (void *)((bottom * bytewidth) + (intptr_t)data);



  memcpy(tempbuf, topP, bytewidth);
  memcpy(topP, bottomP, bytewidth);
  memcpy(bottomP, tempbuf, bytewidth);

  ++top;
  --bottom;
 }
 free(tempbuf);
}
