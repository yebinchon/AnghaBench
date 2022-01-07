
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct box {char* text; } ;


 char* box_text_offset (struct box*,size_t) ;
 int strncpy (char*,char const*,size_t) ;

void
box_text_copy(struct box *box, size_t cells, const char *src, size_t srclen)
{
 char *dst = box_text_offset(box, cells);

 box->text = dst;
 strncpy(dst, src, srclen);
}
