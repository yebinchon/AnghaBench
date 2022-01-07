
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {char const* magic; int errNo; } ;
struct TYPE_15__ {TYPE_1__* last; TYPE_1__* first; } ;
struct TYPE_14__ {int line; struct TYPE_14__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__* LineListPtr ;
typedef TYPE_3__* FTPCIPtr ;


 int AddLine (TYPE_2__*,char const*) ;
 int FTPListToMemory2 (TYPE_3__*,char const*,TYPE_2__*,char const*,int ,int*) ;
 scalar_t__ GLOBCHARSINSTR (char const*) ;
 int InitLineList (TYPE_2__*) ;
 int PrintF (TYPE_3__*,char*,int ) ;
 int RemoteGlobCollapse (char const*,TYPE_2__*) ;
 int RemoveLine (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ glberr (char*) ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrGlobFailed ;
 int kErrGlobNoMatch ;
 char* kLibraryMagic ;
 int kNoErr ;
 char* strchr (int ,char) ;
 scalar_t__ strcmp (char const*,char*) ;

int
FTPRemoteGlob(FTPCIPtr cip, LineListPtr fileList, const char *pattern, int doGlob)
{
 char *cp;
 const char *lsflags;
 LinePtr lp;
 int result;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if (fileList == ((void*)0))
  return (kErrBadParameter);
 InitLineList(fileList);

 if ((pattern == ((void*)0)) || (pattern[0] == '\0'))
  return (kErrBadParameter);





 if ((doGlob == 1) && (GLOBCHARSINSTR(pattern))) {

  lsflags = "";


  if (strcmp(pattern, "*") == 0) {
   pattern = "";
  } else if (strcmp(pattern, "**") == 0) {

   pattern = "";
   lsflags = "-a";
  }

  if ((result = FTPListToMemory2(cip, pattern, fileList, lsflags, 0, (int *) 0)) < 0) {
   if (*lsflags == '\0')
    return (result);

   lsflags = "";
   if ((result = FTPListToMemory2(cip, pattern, fileList, lsflags, 0, (int *) 0)) < 0) {
    return (result);
   }
  }
  if (fileList->first == ((void*)0)) {
   cip->errNo = kErrGlobNoMatch;
   return (kErrGlobNoMatch);
  }
  if (fileList->first == fileList->last) {




   cp = strchr(fileList->first->line, ':');
   if (cp != ((void*)0)) {
    if ((ISTRNEQ(cp, ": No such file or directory", strlen(": No such file or directory")))) {
     (void) RemoveLine(fileList, fileList->first);
     cip->errNo = kErrGlobFailed;
     return (kErrGlobFailed);
    } else if ((ISTRNEQ(cp, ": No match", strlen(": No match")))) {
     cip->errNo = kErrGlobNoMatch;
     return (kErrGlobNoMatch);
    }
   }
  }
  RemoteGlobCollapse(pattern, fileList);
  for (lp=fileList->first; lp != ((void*)0); lp = lp->next)
   PrintF(cip, "  Rglob [%s]\n", lp->line);
 } else {




  fileList->first = fileList->last = ((void*)0);
  (void) AddLine(fileList, pattern);
 }
 return (kNoErr);
}
