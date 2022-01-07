
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int curTransferType; int errNo; int magic; } ;
typedef TYPE_1__* FTPCIPtr ;


 int Error (TYPE_1__* const,int ,char*,int) ;
 int FTPCmd (TYPE_1__* const,char*,int) ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrBadTransferType ;
 void* kErrTYPEFailed ;
 int kLibraryMagic ;
 int kNoErr ;



 scalar_t__ strcmp (int ,int ) ;

int
FTPSetTransferType(const FTPCIPtr cip, int type)
{
 int result;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if (cip->curTransferType != type) {
  switch (type) {
   case 130:
   case 129:
   case 128:
    break;
   case 'i':
   case 'b':
   case 'B':
    type = 129;
    break;
   case 'e':
    type = 128;
    break;
   case 'a':
    type = 130;
    break;
   default:

    Error(cip, kDontPerror, "Bad transfer type [%c].\n", type);
    cip->errNo = kErrBadTransferType;
    return (kErrBadTransferType);
  }
  result = FTPCmd(cip, "TYPE %c", type);
  if (result != 2) {
   result = kErrTYPEFailed;
   cip->errNo = kErrTYPEFailed;
   return (result);
  }
  cip->curTransferType = type;
 }
 return (kNoErr);
}
