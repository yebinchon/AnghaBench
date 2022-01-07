
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errNo; int magic; } ;
typedef TYPE_1__* FTPCIPtr ;


 int FTPCmd (TYPE_1__* const,char*,char const* const) ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrRenameFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPRename(const FTPCIPtr cip, const char *const oldname, const char *const newname)
{
 int result;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);
 if ((oldname == ((void*)0)) || (oldname[0] == '\0'))
  return (kErrBadParameter);
 if ((newname == ((void*)0)) || (oldname[0] == '\0'))
  return (kErrBadParameter);


 result = FTPCmd(cip, "RNFR %s", oldname);
 if (result < 0)
  return (result);
 if (result != 3) {
  cip->errNo = kErrRenameFailed;
  return (cip->errNo);
 }

 result = FTPCmd(cip, "RNTO %s", newname);
 if (result < 0)
  return (result);
 if (result != 2) {
  cip->errNo = kErrRenameFailed;
  return (cip->errNo);
 }
 return (kNoErr);
}
