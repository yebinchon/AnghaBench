
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8_data {scalar_t__ size; int data; } ;


 int memcpy (char*,int ,size_t) ;
 char* xreallocarray (char*,size_t,int) ;

char *
utf8_tocstr(struct utf8_data *src)
{
 char *dst;
 size_t n;

 dst = ((void*)0);

 n = 0;
 for(; src->size != 0; src++) {
  dst = xreallocarray(dst, n + src->size, 1);
  memcpy(dst + n, src->data, src->size);
  n += src->size;
 }

 dst = xreallocarray(dst, n + 1, 1);
 dst[n] = '\0';
 return (dst);
}
