
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct async_iorequest {struct async_iorequest* next; struct async_iorequest* buffer; } ;
struct TYPE_3__ {struct async_iorequest* iorequest; } ;
typedef TYPE_1__ RDPCLIENT ;


 int xfree (struct async_iorequest*) ;

struct async_iorequest *
rdpdr_remove_iorequest(RDPCLIENT * This, struct async_iorequest *prev, struct async_iorequest *iorq)
{
 if (!iorq)
  return ((void*)0);

 if (iorq->buffer)
  xfree(iorq->buffer);
 if (prev)
 {
  prev->next = iorq->next;
  xfree(iorq);
  iorq = prev->next;
 }
 else
 {

  This->iorequest = iorq->next;
  xfree(iorq);
  iorq = ((void*)0);
 }
 return iorq;
}
