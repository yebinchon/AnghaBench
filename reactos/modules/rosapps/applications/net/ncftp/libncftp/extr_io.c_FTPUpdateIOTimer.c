
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_usec; double tv_sec; } ;
struct TYPE_5__ {scalar_t__ nextProgressUpdate; double kBytesPerSec; double bytesTransferred; double expectedSize; double percentCompleted; double secLeft; double startPoint; double sec; scalar_t__ useProgressMeter; int (* progress ) (TYPE_1__* const,int ) ;struct timeval t0; } ;
typedef int (* FTPProgressMeterProc ) (TYPE_1__* const,int ) ;
typedef TYPE_1__* FTPCIPtr ;


 int gettimeofday (struct timeval*,int *) ;
 int kPrUpdateMsg ;
 double kSizeUnknown ;
 int stub1 (TYPE_1__* const,int ) ;
 int time (scalar_t__*) ;

void
FTPUpdateIOTimer(const FTPCIPtr cip)
{
 double sec;
 struct timeval *t0, t1;
 time_t now;

 (void) time(&now);
 if (now < cip->nextProgressUpdate)
  return;
 now += 1;
 cip->nextProgressUpdate = now;

 (void) gettimeofday(&t1, ((void*)0));
 t0 = &cip->t0;

 if (t0->tv_usec > t1.tv_usec) {
  t1.tv_usec += 1000000;
  t1.tv_sec--;
 }
 sec = ((double) (t1.tv_usec - t0->tv_usec) * 0.000001)
  + (t1.tv_sec - t0->tv_sec);
 if (sec > 0.0) {
  cip->kBytesPerSec = ((double) cip->bytesTransferred) / (1024.0 * sec);
 } else {
  cip->kBytesPerSec = -1.0;
 }
 if (cip->expectedSize == kSizeUnknown) {
  cip->percentCompleted = -1.0;
  cip->secLeft = -1.0;
 } else if (cip->expectedSize <= 0) {
  cip->percentCompleted = 100.0;
  cip->secLeft = 0.0;
 } else {
  cip->percentCompleted = ((double) (100.0 * (cip->bytesTransferred + cip->startPoint))) / ((double) cip->expectedSize);
  if (cip->percentCompleted >= 100.0) {
   cip->percentCompleted = 100.0;
   cip->secLeft = 0.0;
  } else if (cip->percentCompleted <= 0.0) {
   cip->secLeft = 999.0;
  }
  if (cip->kBytesPerSec > 0.0) {
   cip->secLeft = ((cip->expectedSize - cip->bytesTransferred - cip->startPoint) / 1024.0) / cip->kBytesPerSec;
   if (cip->secLeft < 0.0)
    cip->secLeft = 0.0;
  }
 }
 cip->sec = sec;
 if ((cip->progress != (FTPProgressMeterProc) 0) && (cip->useProgressMeter != 0))
  (*cip->progress)(cip, kPrUpdateMsg);
}
