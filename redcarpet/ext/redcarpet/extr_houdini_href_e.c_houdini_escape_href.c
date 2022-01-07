
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct buf {int dummy; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int ESCAPE_GROW_FACTOR (size_t) ;
 scalar_t__* HREF_SAFE ;
 int bufgrow (struct buf*,int ) ;
 int bufput (struct buf*,...) ;
 int bufputc (struct buf*,char) ;

void
houdini_escape_href(struct buf *ob, const uint8_t *src, size_t size)
{
 static const char hex_chars[] = "0123456789ABCDEF";
 size_t i = 0, org;
 char hex_str[3];

 bufgrow(ob, ESCAPE_GROW_FACTOR(size));
 hex_str[0] = '%';

 while (i < size) {
  org = i;
  while (i < size && HREF_SAFE[src[i]] != 0)
   i++;

  if (i > org)
   bufput(ob, src + org, i - org);


  if (i >= size)
   break;

  switch (src[i]) {



  case '\'':
   BUFPUTSL(ob, "&#x27;");
   break;
  default:
   hex_str[1] = hex_chars[(src[i] >> 4) & 0xF];
   hex_str[2] = hex_chars[src[i] & 0xF];
   bufput(ob, hex_str, 3);
  }

  i++;
 }
}
