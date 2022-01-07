
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {size_t size; int data; } ;


 int VIS_NL ;
 int VIS_OCTAL ;
 int VIS_TAB ;
 int strlcpy (char*,char*,int) ;
 size_t utf8_strvis (char*,int ,size_t,int const) ;
 char* xreallocarray (int *,size_t,int) ;

char *
paste_make_sample(struct paste_buffer *pb)
{
 char *buf;
 size_t len, used;
 const int flags = VIS_OCTAL|VIS_TAB|VIS_NL;
 const size_t width = 200;

 len = pb->size;
 if (len > width)
  len = width;
 buf = xreallocarray(((void*)0), len, 4 + 4);

 used = utf8_strvis(buf, pb->data, len, flags);
 if (pb->size > width || used > width)
  strlcpy(buf + width, "...", 4);
 return (buf);
}
