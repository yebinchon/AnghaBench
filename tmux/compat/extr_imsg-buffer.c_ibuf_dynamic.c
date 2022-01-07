
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibuf {size_t max; } ;


 struct ibuf* ibuf_open (size_t) ;

struct ibuf *
ibuf_dynamic(size_t len, size_t max)
{
 struct ibuf *buf;

 if (max < len)
  return (((void*)0));

 if ((buf = ibuf_open(len)) == ((void*)0))
  return (((void*)0));

 if (max > 0)
  buf->max = max;

 return (buf);
}
