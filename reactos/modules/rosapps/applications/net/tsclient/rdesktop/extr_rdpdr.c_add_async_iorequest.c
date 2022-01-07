
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef void* uint32 ;
struct async_iorequest {scalar_t__ fd; void* offset; int * buffer; void* itv_timeout; void* timeout; int * fns; scalar_t__ partial_len; void* length; void* major; void* id; void* device; struct async_iorequest* next; } ;
struct TYPE_3__ {struct async_iorequest* iorequest; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int DEVICE_FNS ;
typedef int BOOL ;


 int False ;
 int True ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static BOOL
add_async_iorequest(RDPCLIENT * This, uint32 device, uint32 file, uint32 id, uint32 major, uint32 length,
      DEVICE_FNS * fns, uint32 total_timeout, uint32 interval_timeout, uint8 * buffer,
      uint32 offset)
{
 struct async_iorequest *iorq;

 if (This->iorequest == ((void*)0))
 {
  This->iorequest = (struct async_iorequest *) xmalloc(sizeof(struct async_iorequest));
  if (!This->iorequest)
   return False;
  This->iorequest->fd = 0;
  This->iorequest->next = ((void*)0);
 }

 iorq = This->iorequest;

 while (iorq->fd != 0)
 {

  if (iorq->next == ((void*)0))
  {
   iorq->next =
    (struct async_iorequest *) xmalloc(sizeof(struct async_iorequest));
   if (!iorq->next)
    return False;
   iorq->next->fd = 0;
   iorq->next->next = ((void*)0);
  }
  iorq = iorq->next;
 }
 iorq->device = device;
 iorq->fd = file;
 iorq->id = id;
 iorq->major = major;
 iorq->length = length;
 iorq->partial_len = 0;
 iorq->fns = fns;
 iorq->timeout = total_timeout;
 iorq->itv_timeout = interval_timeout;
 iorq->buffer = buffer;
 iorq->offset = offset;
 return True;
}
