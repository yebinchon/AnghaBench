
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {size_t size; char const* data; scalar_t__ unit; } ;


 int assert (int) ;

int
bufprefix(const struct buf *buf, const char *prefix)
{
 size_t i;
 assert(buf && buf->unit);

 for (i = 0; i < buf->size; ++i) {
  if (prefix[i] == 0)
   return 0;

  if (buf->data[i] != prefix[i])
   return buf->data[i] - prefix[i];
 }

 return 0;
}
