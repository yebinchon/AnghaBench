
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct buf {char* data; size_t size; } ;


 int bufprintf (struct buf*,char*,unsigned long) ;
 int bufputc (struct buf*,char) ;
 int isascii (char const) ;
 scalar_t__ strchr (char const*,char const) ;
 char tolower (char const) ;

__attribute__((used)) static void
rndr_header_anchor(struct buf *out, const struct buf *anchor)
{
 static const char *STRIPPED = " -&+$,/:;=?@\"#{}|^~[]`\\*()%.!'";

 const uint8_t *a = anchor->data;
 const size_t size = anchor->size;
 size_t i = 0;
 int stripped = 0, inserted = 0;

 for (; i < size; ++i) {

  if (a[i] == '<') {
   while (i < size && a[i] != '>')
    i++;

  } else if (a[i] == '&') {
   while (i < size && a[i] != ';')
    i++;
  }

  else if (!isascii(a[i]) || strchr(STRIPPED, a[i])) {
   if (inserted && !stripped)
    bufputc(out, '-');

   stripped = 1;
  }
  else {
   bufputc(out, tolower(a[i]));
   stripped = 0;
   inserted++;
  }
 }


 if (stripped && inserted)
  out->size--;


 if (!inserted && anchor->size) {
         unsigned long hash = 5381;
  for (i = 0; i < size; ++i) {
   hash = ((hash << 5) + hash) + a[i];
  }
  bufprintf(out, "part-%lx", hash);
 }
}
