
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int errNo; } ;
struct TYPE_15__ {TYPE_1__* first; } ;
struct TYPE_14__ {char* line; struct TYPE_14__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__ LineList ;
typedef int (* FTPFtwProc ) (TYPE_3__* const,char*,int ) ;
typedef TYPE_3__* FTPCIPtr ;


 int DisposeLineListContents (TYPE_2__*) ;
 int FTPChdir (TYPE_3__* const,char*) ;
 int FTPIsDir (TYPE_3__* const,char*) ;
 int FTPRemoteGlob (TYPE_3__* const,TYPE_2__*,char*,int ) ;
 char* Strnpcat (char*,char*,size_t) ;
 int kErrBadLineList ;
 void* kErrCannotGoToPrevDir ;
 int kErrGlobNoMatch ;
 int kErrRecursionLimitReached ;
 int kFtwDir ;
 int kFtwFile ;
 int kGlobYes ;
 int kNoErr ;
 int * strchr (char*,char) ;
 int * strrchr (char*,char) ;
 int stub1 (TYPE_3__* const,char*,int ) ;
 int stub2 (TYPE_3__* const,char*,int ) ;

__attribute__((used)) static int
FTPFtwL2(const FTPCIPtr cip, char *dir, char *end, size_t dirsize, FTPFtwProc proc, int maxdepth)
{
 LineList fileList;
 LinePtr filePtr;
 char *file, *cp;
 int result;

 if (maxdepth <= 0) {
  result = cip->errNo = kErrRecursionLimitReached;
  return (result);
 }

 result = FTPRemoteGlob(cip, &fileList, "**", kGlobYes);
 if (result != kNoErr) {
  if (result == kErrGlobNoMatch)
   result = kNoErr;
  return (result);
 }

 for (filePtr = fileList.first;
  filePtr != ((void*)0);
  filePtr = filePtr->next)
 {
  file = filePtr->line;
  if (file == ((void*)0)) {
   cip->errNo = kErrBadLineList;
   break;
  }

  if ((file[0] == '.') && ((file[1] == '\0') || ((file[1] == '.') && (file[2] == '\0'))))
   continue;

  result = FTPIsDir(cip, file);
  if (result < 0) {


   continue;
  } else if (result == 1) {

   cp = Strnpcat(dir, file, dirsize);
   result = (*proc)(cip, dir, kFtwDir);
   if (result != kNoErr)
    break;

   if ((strchr(dir, '/') == ((void*)0)) && (strrchr(dir, '\\') != ((void*)0)))
    *cp++ = '\\';
   else
    *cp++ = '/';
   *cp = '\0';

   result = FTPChdir(cip, file);
   if (result == kNoErr) {
    result = FTPFtwL2(cip, dir, cp, dirsize, proc, maxdepth - 1);
    if (result != kNoErr)
     break;
    if (FTPChdir(cip, "..") < 0) {
     result = kErrCannotGoToPrevDir;
     cip->errNo = kErrCannotGoToPrevDir;
     break;
    }
   }

   *end = '\0';
   if (result != 0)
    break;
  } else {

   cp = Strnpcat(dir, file, dirsize);
   result = (*proc)(cip, dir, kFtwFile);
   *end = '\0';
   if (result != 0)
    break;
  }
 }
 DisposeLineListContents(&fileList);

 return (result);
}
