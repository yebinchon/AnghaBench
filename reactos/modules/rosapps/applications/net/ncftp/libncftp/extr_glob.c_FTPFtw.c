
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int savedcwd ;
typedef int curcwd ;
struct TYPE_11__ {int errNo; } ;
typedef int (* FTPFtwProc ) (TYPE_1__* const,char*,int ) ;
typedef TYPE_1__* FTPCIPtr ;


 int FTPChdir (TYPE_1__* const,char const* const) ;
 int FTPFtwL2 (TYPE_1__* const,char*,char*,int,int (*) (TYPE_1__* const,char*,int ),int) ;
 int FTPGetCWD (TYPE_1__* const,char*,int) ;
 int FTPIsDir (TYPE_1__* const,char const* const) ;
 void* kErrCannotGoToPrevDir ;
 int kErrNotADirectory ;
 int kFtwDir ;
 int kNoErr ;
 int * strchr (char*,char) ;
 int strlen (char*) ;
 int * strrchr (char*,char) ;
 int stub1 (TYPE_1__* const,char*,int ) ;

int
FTPFtw(const FTPCIPtr cip, const char *const dir, FTPFtwProc proc, int maxdepth)
{
 int result, result2;
 char *cp;
 char savedcwd[1024];
 char curcwd[2048];

 result = FTPIsDir(cip, dir);
 if (result < 0) {

  return result;
 } else if (result == 0) {
  result = cip->errNo = kErrNotADirectory;
  return (result);
 }


 (void) FTPGetCWD(cip, savedcwd, sizeof(savedcwd));

 result = FTPChdir(cip, dir);
 if (result != kNoErr) {
  return (result);
 }


 result = FTPGetCWD(cip, curcwd, sizeof(curcwd) - 3);
 if (result != kNoErr) {
  if (FTPChdir(cip, savedcwd) != kNoErr) {
   result = kErrCannotGoToPrevDir;
   cip->errNo = kErrCannotGoToPrevDir;
  }
  return (result);
 }

 result2 = (*proc)(cip, curcwd, kFtwDir);
 if (result2 == kNoErr) {
  cp = curcwd + strlen(curcwd);

  if ((strchr(curcwd, '/') == ((void*)0)) && (strrchr(curcwd, '\\') != ((void*)0)))
   *cp++ = '\\';
  else
   *cp++ = '/';
  *cp = '\0';
  result = FTPFtwL2(cip, curcwd, cp, sizeof(curcwd), proc, maxdepth - 1);
 }


 if (FTPChdir(cip, savedcwd) != kNoErr) {

  result = kErrCannotGoToPrevDir;
  cip->errNo = kErrCannotGoToPrevDir;
  return (result);
 }

 if ((result2 != kNoErr) && (result == kNoErr))
  result = result2;

 return (result);
}
