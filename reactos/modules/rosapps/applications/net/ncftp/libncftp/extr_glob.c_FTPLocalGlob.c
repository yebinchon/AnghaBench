
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int string ;
typedef int pattern2 ;
struct TYPE_5__ {int magic; } ;
typedef int * LineListPtr ;
typedef TYPE_1__* FTPCIPtr ;


 int AddLine (int *,int ) ;
 int ExpandTilde (int ,int) ;
 scalar_t__ GLOBCHARSINSTR (int ) ;
 int InitLineList (int *) ;
 int LazyUnixLocalGlob (TYPE_1__*,int *,int ) ;
 int STRNCPY (int ,char const*) ;
 int WinLocalGlob (TYPE_1__*,int *,int ) ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPLocalGlob(FTPCIPtr cip, LineListPtr fileList, const char *pattern, int doGlob)
{
 string pattern2;
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

 (void) STRNCPY(pattern2, pattern);


 ExpandTilde(pattern2, sizeof(pattern2));
 InitLineList(fileList);
 result = kNoErr;

 if ((doGlob == 1) && (GLOBCHARSINSTR(pattern2))) {



  result = LazyUnixLocalGlob(cip, fileList, pattern2);

 } else {



  (void) AddLine(fileList, pattern2);
 }

 return (result);
}
