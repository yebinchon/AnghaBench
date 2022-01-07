
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct async_iorequest {scalar_t__ fd; scalar_t__ major; struct async_iorequest* next; int id; int device; } ;
struct TYPE_5__ {struct async_iorequest* iorequest; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef int BOOL ;


 int False ;
 int True ;
 struct async_iorequest* rdpdr_remove_iorequest (TYPE_1__*,struct async_iorequest*,struct async_iorequest*) ;
 int rdpdr_send_completion (TYPE_1__*,int ,int ,int ,scalar_t__,int *,int) ;

BOOL
rdpdr_abort_io(RDPCLIENT * This, uint32 fd, uint32 major, NTSTATUS status)
{
 uint32 result;
 struct async_iorequest *iorq;
 struct async_iorequest *prev;

 iorq = This->iorequest;
 prev = ((void*)0);
 while (iorq != ((void*)0))
 {


  if ((iorq->fd == fd) && (major == 0 || iorq->major == major))
  {
   result = 0;
   rdpdr_send_completion(This, iorq->device, iorq->id, status, result, (uint8 *) "",
           1);

   iorq = rdpdr_remove_iorequest(This, prev, iorq);
   return True;
  }

  prev = iorq;
  iorq = iorq->next;
 }

 return False;
}
