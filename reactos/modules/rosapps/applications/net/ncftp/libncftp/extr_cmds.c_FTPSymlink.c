
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int magic; } ;
typedef TYPE_1__* FTPCIPtr ;


 int FTPCmd (TYPE_1__* const,char*,char const* const,char const* const) ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrSYMLINKFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPSymlink(const FTPCIPtr cip, const char *const lfrom, const char *const lto)
{
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);
 if ((cip == ((void*)0)) || (lfrom == ((void*)0)) || (lto == ((void*)0)))
  return (kErrBadParameter);
 if ((lfrom[0] == '\0') || (lto[0] == '\0'))
  return (kErrBadParameter);
 if (FTPCmd(cip, "SITE SYMLINK %s %s", lfrom, lto) == 2)
  return (kNoErr);
 return (kErrSYMLINKFailed);
}
