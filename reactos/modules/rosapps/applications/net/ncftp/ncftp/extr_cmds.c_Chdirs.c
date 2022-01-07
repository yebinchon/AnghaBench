
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* const magic; int errNo; char* buf; int bufSize; } ;
typedef TYPE_1__* FTPCIPtr ;


 scalar_t__ IsLocalPathDelim (char const) ;
 int PathCat (char*,int,int ,char const* const) ;
 char* StrFindLocalPathDelim (char*) ;
 int StrRemoveTrailingLocalPathDelim (char*) ;
 int Strncpy (char*,char const* const,int) ;
 int gRemoteCWD ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrInvalidDirParam ;
 char* kLibraryMagic ;
 int nFTPChdirAndGetCWD (TYPE_1__*,char*,int) ;
 scalar_t__ strcmp (char const* const,char*) ;

int
Chdirs(FTPCIPtr cip, const char *const cdCwd)
{
 char *cp, *startcp;
 int result;
 int lastSubDir;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if (cdCwd == ((void*)0)) {
  result = kErrInvalidDirParam;
  cip->errNo = kErrInvalidDirParam;
  return result;
 }

 if ((cdCwd[0] == '\0') || (strcmp(cdCwd, ".") == 0)) {
  result = 0;
  return (result);
 }

 cp = cip->buf;
 cp[cip->bufSize - 2] = '\0';
 if ((cdCwd[0] == '.') && (cdCwd[1] == '.') && ((cdCwd[2] == '\0') || IsLocalPathDelim(cdCwd[2]))) {
  PathCat(cip->buf, cip->bufSize, gRemoteCWD, cdCwd);
 } else {
  (void) Strncpy(cip->buf, cdCwd, cip->bufSize);
 }
 if (cp[cip->bufSize - 2] != '\0')
  return (kErrBadParameter);

 StrRemoveTrailingLocalPathDelim(cp);
 do {
  startcp = cp;
  cp = StrFindLocalPathDelim(cp + 0);
  if (cp != ((void*)0)) {
   *cp++ = '\0';
  }
  lastSubDir = (cp == ((void*)0));
  result = nFTPChdirAndGetCWD(cip, (*startcp != '\0') ? startcp : "/", lastSubDir ? 0 : 1);
  if (result < 0) {
   cip->errNo = result;
  }
 } while ((!lastSubDir) && (result == 0));

 return (result);
}
