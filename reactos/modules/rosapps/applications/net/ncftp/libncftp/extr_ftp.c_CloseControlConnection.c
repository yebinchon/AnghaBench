
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ctrlTimeout; scalar_t__ loggedIn; scalar_t__ connected; void* ctrlSocketW; void* ctrlSocketR; int cout; int cin; int ctrlSrl; } ;
typedef TYPE_1__* FTPCIPtr ;


 int CloseFile (int *) ;
 int DisposeSReadlineInfo (int *) ;
 int SClose (void*,int) ;
 int alarm (scalar_t__) ;
 void* kClosedFileDescriptor ;

void
CloseControlConnection(const FTPCIPtr cip)
{







 if (cip->ctrlTimeout > 0)
  (void) alarm(cip->ctrlTimeout);
 CloseFile(&cip->cin);
 CloseFile(&cip->cout);
 cip->ctrlSocketR = kClosedFileDescriptor;
 cip->ctrlSocketW = kClosedFileDescriptor;
 if (cip->ctrlTimeout > 0)
  (void) alarm(0);

 cip->connected = 0;
 cip->loggedIn = 0;
}
