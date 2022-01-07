
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int (* Code ) (TYPE_4__*,int ,int ,size_t*,int ,size_t,int) ;} ;
struct TYPE_10__ {size_t (* Write ) (TYPE_3__*,int ,size_t) ;} ;
struct TYPE_9__ {int stopReading; size_t outBufSize; int canWrite; int outBuf; TYPE_1__* mtCoder; scalar_t__ stopWriting; int index; int inBuf; int canRead; } ;
struct TYPE_8__ {size_t blockSize; TYPE_3__* outStream; int mtProgress; TYPE_4__* mtCallback; int inStream; } ;
typedef int SRes ;
typedef TYPE_2__ CMtThread ;
typedef int Bool ;


 scalar_t__ Event_Set (int *) ;
 scalar_t__ Event_Wait (int *) ;
 int FullRead (int ,int ,size_t*) ;
 TYPE_2__* GET_NEXT_THREAD (TYPE_2__*) ;
 int MtProgress_Reinit (int *,int ) ;
 int RINOK (int ) ;
 int SZ_ERROR_FAIL ;
 int SZ_ERROR_THREAD ;
 int SZ_ERROR_WRITE ;
 int SZ_OK ;
 void* True ;
 int stub1 (TYPE_4__*,int ,int ,size_t*,int ,size_t,int) ;
 size_t stub2 (TYPE_3__*,int ,size_t) ;

__attribute__((used)) static SRes MtThread_Process(CMtThread *p, Bool *stop)
{
  CMtThread *next;
  *stop = True;
  if (Event_Wait(&p->canRead) != 0)
    return SZ_ERROR_THREAD;

  next = GET_NEXT_THREAD(p);

  if (p->stopReading)
  {
    next->stopReading = True;
    return Event_Set(&next->canRead) == 0 ? SZ_OK : SZ_ERROR_THREAD;
  }

  {
    size_t size = p->mtCoder->blockSize;
    size_t destSize = p->outBufSize;

    RINOK(FullRead(p->mtCoder->inStream, p->inBuf, &size));
    next->stopReading = *stop = (size != p->mtCoder->blockSize);
    if (Event_Set(&next->canRead) != 0)
      return SZ_ERROR_THREAD;

    RINOK(p->mtCoder->mtCallback->Code(p->mtCoder->mtCallback, p->index,
        p->outBuf, &destSize, p->inBuf, size, *stop));

    MtProgress_Reinit(&p->mtCoder->mtProgress, p->index);

    if (Event_Wait(&p->canWrite) != 0)
      return SZ_ERROR_THREAD;
    if (p->stopWriting)
      return SZ_ERROR_FAIL;
    if (p->mtCoder->outStream->Write(p->mtCoder->outStream, p->outBuf, destSize) != destSize)
      return SZ_ERROR_WRITE;
    return Event_Set(&next->canWrite) == 0 ? SZ_OK : SZ_ERROR_THREAD;
  }
}
