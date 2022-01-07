
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errNo; int magic; } ;
typedef TYPE_1__* FTPCIPtr ;


 int FTPFileType (TYPE_1__* const,char const* const,int*) ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrFileExistsButCannotDetermineType ;
 int kErrInvalidDirParam ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPIsDir(const FTPCIPtr cip, const char *const dir)
{
 int result, ftype;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if ((dir == ((void*)0)) || (dir[0] == '\0')) {
  cip->errNo = kErrInvalidDirParam;
  return (kErrInvalidDirParam);
 }

 result = FTPFileType(cip, dir, &ftype);
 if ((result == kNoErr) || (result == kErrFileExistsButCannotDetermineType)) {
  result = 0;
  if (ftype == 'd')
   result = 1;
 }
 return (result);
}
