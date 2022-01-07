
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int magic; } ;
typedef TYPE_1__* FTPCIPtr ;


 int FTPCmd (TYPE_1__* const,char*,char const* const) ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrUmaskFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPUmask(const FTPCIPtr cip, const char *const umsk)
{
 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);
 if ((umsk == ((void*)0)) || (umsk[0] == '\0'))
  return (kErrBadParameter);
 if (FTPCmd(cip, "SITE UMASK %s", umsk) == 2)
  return (kNoErr);
 return (kErrUmaskFailed);
}
