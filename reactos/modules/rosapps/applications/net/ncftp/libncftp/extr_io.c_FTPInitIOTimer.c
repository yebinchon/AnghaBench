
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ longest_int ;
struct TYPE_3__ {double kBytesPerSec; double percentCompleted; double sec; double secLeft; int useProgressMeter; int t0; scalar_t__ dataTimedOut; scalar_t__ stalled; scalar_t__ nextProgressUpdate; int * lname; int * rname; int mdtm; int expectedSize; scalar_t__ bytesTransferred; } ;
typedef TYPE_1__* FTPCIPtr ;


 int gettimeofday (int *,int *) ;
 int kModTimeUnknown ;
 int kSizeUnknown ;

void
FTPInitIOTimer(const FTPCIPtr cip)
{
 cip->bytesTransferred = (longest_int) 0;
 cip->expectedSize = kSizeUnknown;
 cip->mdtm = kModTimeUnknown;
 cip->rname = ((void*)0);
 cip->lname = ((void*)0);
 cip->kBytesPerSec = -1.0;
 cip->percentCompleted = -1.0;
 cip->sec = -1.0;
 cip->secLeft = -1.0;
 cip->nextProgressUpdate = 0;
 cip->stalled = 0;
 cip->dataTimedOut = 0;
 cip->useProgressMeter = 1;
 (void) gettimeofday(&cip->t0, ((void*)0));
}
