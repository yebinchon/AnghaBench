
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int errNo; char const* const buf; int lastFTPCmdResultStr; int bufSize; int magic; } ;
typedef TYPE_1__* FTPCIPtr ;


 int Error (TYPE_1__* const,int ,char*,char const* const,char*,...) ;
 int FTPChdir (TYPE_1__* const,char const* const) ;
 int FTPCmd (TYPE_1__* const,char*,char const* const) ;
 int FTPGetCWD (TYPE_1__* const,char const* const,int ) ;
 int STRNCPY (char*,char const* const) ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrCannotGoToPrevDir ;
 int kErrInvalidDirParam ;
 void* kErrMKDFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 int const kRecursiveNo ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,int ) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

int
FTPMkdir2(const FTPCIPtr cip, const char *const newDir, const int recurse, const char *const curDir)
{
 int result, result2;
 char *cp, *newTreeStart, *cp2;
 char dir[512];
 char dir2[512];
 char c;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if ((newDir == ((void*)0)) || (newDir[0] == '\0')) {
  cip->errNo = kErrInvalidDirParam;
  return (kErrInvalidDirParam);
 }


 if ((curDir == ((void*)0)) || (curDir[0] == '\0')) {






  (void) FTPGetCWD(cip, cip->buf, cip->bufSize);
 }

 result = FTPChdir(cip, newDir);
 if (result == kNoErr) {



  result2 = FTPChdir(cip, ((curDir == ((void*)0)) || (curDir[0] == '\0')) ? cip->buf : curDir);
  if (result2 < 0) {
   result = kErrCannotGoToPrevDir;
   cip->errNo = kErrCannotGoToPrevDir;
   return (result);
  }


  return (kNoErr);
 }

 if (recurse == kRecursiveNo) {
  result = FTPCmd(cip, "MKD %s", newDir);
  if (result > 0) {
   if (result != 2) {
    Error(cip, kDontPerror, "MKD %s failed; [%s]\n", newDir, cip->lastFTPCmdResultStr);
    result = kErrMKDFailed;
    cip->errNo = kErrMKDFailed;
    return (result);
   } else {
    result = kNoErr;
   }
  }
 } else {
  (void) STRNCPY(dir, newDir);


  cp = dir + strlen(dir) - 1;
  for (;;) {
   if (cp <= dir) {
    if ((newDir == ((void*)0)) || (newDir[0] == '\0')) {
     cip->errNo = kErrInvalidDirParam;
     result = kErrInvalidDirParam;
     return (result);
    }
   }
   if ((*cp != '/') && (*cp != '\\')) {
    cp[1] = '\0';
    break;
   }
   --cp;
  }
  (void) STRNCPY(dir2, dir);

  if ((strrchr(dir, '/') == dir) || (strrchr(dir, '\\') == dir)) {

   result = FTPCmd(cip, "MKD %s", dir);
   if (result < 0) {
    return (result);
   }
   if (result != 2) {
    Error(cip, kDontPerror, "MKD %s failed; [%s]\n", dir, cip->lastFTPCmdResultStr);
    result = kErrMKDFailed;
    cip->errNo = kErrMKDFailed;
    return (result);
   }

   return (kNoErr);
  }

  for (;;) {
   cp = strrchr(dir, '/');
   if (cp == ((void*)0))
    cp = strrchr(dir, '\\');
   if (cp == ((void*)0)) {
    cp = dir + strlen(dir) - 1;
    if (dir[0] == '\0') {
     result = kErrMKDFailed;
     cip->errNo = kErrMKDFailed;
     return (result);
    }




    cp = dir - 1;
    break;
   }
   if (cp == dir) {
    result = kErrMKDFailed;
    cip->errNo = kErrMKDFailed;
    return (result);
   }
   *cp = '\0';
   result = FTPChdir(cip, dir);
   if (result == 0) {
    break;

   }
  }

  newTreeStart = dir2 + ((cp + 1) - dir);
  for (cp = newTreeStart; ; ) {
   cp2 = cp;
   cp = strchr(cp2, '/');
   c = '/';
   if (cp == ((void*)0))
    cp = strchr(cp2, '\\');
   if (cp != ((void*)0)) {
    c = *cp;
    *cp = '\0';
    if (cp[1] == '\0') {

     break;
    }
   }
   result = FTPCmd(cip, "MKD %s", newTreeStart);
   if (result < 0) {
    return (result);
   }
   if (result != 2) {
    Error(cip, kDontPerror, "Cwd=%s; MKD %s failed; [%s]\n", cip->buf, newTreeStart, cip->lastFTPCmdResultStr);
    result = kErrMKDFailed;
    cip->errNo = kErrMKDFailed;
    goto goback;
   }
   if (cp == ((void*)0))
    break;
   *cp++ = c;
  }
  result = kNoErr;

goback:
  result2 = FTPChdir(cip, ((curDir == ((void*)0)) || (curDir[0] == '\0')) ? cip->buf : curDir);
  if ((result == 0) && (result2 < 0)) {
   result = kErrCannotGoToPrevDir;
   cip->errNo = kErrCannotGoToPrevDir;
  }
 }
 return (result);
}
