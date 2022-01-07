
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct Stat {scalar_t__ st_size; int st_mtime; int st_mode; } ;
typedef scalar_t__ longest_int ;
struct TYPE_8__ {char type; int * plug; int * rlinkto; scalar_t__ size; int mdtm; void* lname; int * rname; void* relname; } ;
struct TYPE_7__ {TYPE_1__* first; } ;
struct TYPE_6__ {char* line; struct TYPE_6__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__* LineListPtr ;
typedef int FileInfoListPtr ;
typedef TYPE_3__ FileInfo ;
typedef int FTPCIPtr ;


 int AddFileInfo (int ,TYPE_3__*) ;
 int Error (int ,int ,char*,char*) ;
 int InitFileInfoList (int ) ;
 scalar_t__ Lstat (char*,struct Stat*) ;
 int STRNCPY (char*,char*) ;
 scalar_t__ S_ISDIR (int ) ;
 void* StrDup (char*) ;
 char* StrRFindLocalPathDelim (char*) ;
 int Traverse (int ,char*,struct Stat*,char*,int ) ;
 int _MAX_PATH ;
 int kDoPerror ;
 int kNoErr ;
 scalar_t__ strcmp (char*,char*) ;

int
FTPLocalRecursiveFileList2(FTPCIPtr cip, LineListPtr fileList, FileInfoListPtr files, int erelative)
{
 LinePtr filePtr, nextFilePtr;




 char fullpath[512];
 char relpath[512];

 struct Stat st;
 FileInfo fi;
 char *cp;

 InitFileInfoList(files);

 for (filePtr = fileList->first;
  filePtr != ((void*)0);
  filePtr = nextFilePtr)
 {
  nextFilePtr = filePtr->next;

  (void) STRNCPY(fullpath, filePtr->line);
  if ((erelative != 0) || (strcmp(filePtr->line, ".") == 0) || (filePtr->line[0] == '\0'))
   (void) STRNCPY(relpath, "");
  else if ((cp = StrRFindLocalPathDelim(filePtr->line)) == ((void*)0))
   (void) STRNCPY(relpath, filePtr->line);
  else
   (void) STRNCPY(relpath, cp + 1);
  if (Lstat(fullpath, &st) < 0) {
   Error(cip, kDoPerror, "could not stat %s.\n", fullpath);
   continue;
  }

  if (S_ISDIR(st.st_mode) == 0) {
   fi.relname = StrDup(relpath);
   fi.rname = ((void*)0);
   fi.lname = StrDup(fullpath);
   fi.mdtm = st.st_mtime;
   fi.size = (longest_int) st.st_size;
   fi.rlinkto = ((void*)0);
   fi.plug = ((void*)0);
   fi.type = '-';
   (void) AddFileInfo(files, &fi);
   continue;
  }


  Traverse(cip, fullpath, &st, relpath, files);
 }
 return (kNoErr);
}
