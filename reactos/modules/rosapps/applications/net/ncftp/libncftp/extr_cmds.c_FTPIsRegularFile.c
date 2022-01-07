
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
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPIsRegularFile(const FTPCIPtr cip, const char *const file)
{
 int result, ftype;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if ((file == ((void*)0)) || (file[0] == '\0')) {
  cip->errNo = kErrBadParameter;
  return (kErrBadParameter);
 }

 result = FTPFileType(cip, file, &ftype);
 if ((result == kNoErr) || (result == kErrFileExistsButCannotDetermineType)) {
  result = 1;
  if (ftype == 'd')
   result = 0;
 }
 return (result);
}
