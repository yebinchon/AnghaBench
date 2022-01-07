
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; int errNo; int bufSize; } ;
typedef TYPE_1__* FTPCIPtr ;


 int Error (TYPE_1__* const,int ,char*) ;
 scalar_t__ calloc (size_t,int ) ;
 int kDontPerror ;
 int kErrMallocFailed ;
 int kNoErr ;

__attribute__((used)) static int
FTPAllocateHost(const FTPCIPtr cip)
{
 char *buf;





 if (cip->buf == ((void*)0)) {
  buf = (char *) calloc((size_t) 1, cip->bufSize);
  if (buf == ((void*)0)) {
   Error(cip, kDontPerror, "Malloc failed.\n");
   cip->errNo = kErrMallocFailed;
   return (kErrMallocFailed);
  }
  cip->buf = buf;
 }
 return (kNoErr);
}
