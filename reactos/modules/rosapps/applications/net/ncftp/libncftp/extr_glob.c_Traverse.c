
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {char* d_name; } ;
struct Stat {int st_mode; scalar_t__ st_size; int st_mtime; } ;
typedef int mode_t ;
typedef void* longest_int ;
struct TYPE_3__ {char type; int * rlinkto; int * plug; void* size; int mdtm; void* lname; int * rname; void* relname; } ;
typedef int FileInfoListPtr ;
typedef TYPE_1__ FileInfo ;
typedef int FTPCIPtr ;
typedef int DIR ;


 int AddFileInfo (int ,TYPE_1__*) ;
 int Error (int ,int ,char*,char*) ;
 scalar_t__ Lstat (char*,struct Stat*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 void* StrDup (char*) ;
 int * calloc (int,int) ;
 int closedir (int *) ;
 int free (int *) ;
 int kDoPerror ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ readlink (char*,int *,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
Traverse(FTPCIPtr cip, char *fullpath, struct Stat *st, char *relpath, FileInfoListPtr filp)
{
 char *dname;
 struct dirent *dirp;
 mode_t m;
 DIR *dp;
 char *cp;
 char *c2;
 FileInfo fi;

 if (relpath[0] != '\0') {
  fi.relname = StrDup(relpath);
  fi.rname = ((void*)0);
  fi.lname = StrDup(fullpath);
  fi.rlinkto = ((void*)0);
  fi.plug = ((void*)0);
  fi.mdtm = st->st_mtime;
  fi.size = (longest_int) st->st_size;
  fi.type = 'd';
  (void) AddFileInfo(filp, &fi);
 }


 cp = fullpath + strlen(fullpath);
 *cp++ = '/';
 *cp = '\0';

 c2 = relpath + strlen(relpath);
 *c2++ = '/';
 *c2 = '\0';

 if ((dp = opendir(fullpath)) == ((void*)0)) {
  cp[-1] = '\0';
  c2[-1] = '\0';
  Error(cip, kDoPerror, "could not opendir %s.\n", fullpath);
  return;
 }

 while ((dirp = readdir(dp)) != ((void*)0)) {
  dname = dirp->d_name;
  if ((dname[0] == '.') && ((dname[1] == '\0') || ((dname[1] == '.') && (dname[2] == '\0'))))
   continue;

  (void) strcpy(cp, dirp->d_name);
  (void) strcpy(c2, dirp->d_name);
  if (Lstat(fullpath, st) < 0) {
   Error(cip, kDoPerror, "could not stat %s.\n", fullpath);
   continue;
  }

  fi.relname = StrDup(relpath + (((relpath[0] == '/') || (relpath[0] == '\\')) ? 1 : 0));
  fi.rname = ((void*)0);
  fi.lname = StrDup(fullpath);
  fi.mdtm = st->st_mtime;
  fi.size = (longest_int) st->st_size;
  fi.rlinkto = ((void*)0);
  fi.plug = ((void*)0);

  m = st->st_mode;
  if (S_ISREG(m) != 0) {

   fi.type = '-';
   (void) AddFileInfo(filp, &fi);
  } else if (S_ISDIR(m)) {
   Traverse(cip, fullpath, st, relpath, filp);
  }
 }
 cp[-1] = '\0';
 c2[-1] = '\0';

 (void) closedir(dp);
}
