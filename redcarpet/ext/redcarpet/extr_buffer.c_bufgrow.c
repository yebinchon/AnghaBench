
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {size_t unit; size_t asize; void* data; } ;


 size_t BUFFER_MAX_ALLOC_SIZE ;
 int BUF_ENOMEM ;
 int BUF_OK ;
 int assert (int ) ;
 void* realloc (void*,size_t) ;

int
bufgrow(struct buf *buf, size_t neosz)
{
 size_t neoasz;
 void *neodata;

 assert(buf && buf->unit);

 if (neosz > BUFFER_MAX_ALLOC_SIZE)
  return BUF_ENOMEM;

 if (buf->asize >= neosz)
  return BUF_OK;

 neoasz = buf->asize + buf->unit;
 while (neoasz < neosz)
  neoasz += buf->unit;

 neodata = realloc(buf->data, neoasz);
 if (!neodata)
  return BUF_ENOMEM;

 buf->data = neodata;
 buf->asize = neoasz;
 return BUF_OK;
}
