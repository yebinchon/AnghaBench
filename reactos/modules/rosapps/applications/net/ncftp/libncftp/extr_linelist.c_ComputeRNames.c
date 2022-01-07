
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {char* relname; char* lname; char* rname; struct TYPE_4__* next; } ;
typedef TYPE_1__* FileInfoPtr ;
typedef TYPE_2__* FileInfoListPtr ;


 int * Dynscat (char**,char const*,char*,...) ;
 int LocalPathToTVFSPath (char*) ;
 int TVFSPathToLocalPath (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

int
ComputeRNames(FileInfoListPtr dst, const char *dstdir, int pflag, int nochop)
{
 FileInfoPtr lp, lp2;
 char *buf;
 char *cp;

 if (dstdir == ((void*)0))
  dstdir = ".";

 for (lp = dst->first; lp != ((void*)0); lp = lp2) {
  lp2 = lp->next;

  buf = ((void*)0);
  if (nochop != 0) {
   if ((dstdir[0] != '\0') && (strcmp(dstdir, "."))) {
    if (Dynscat(&buf, dstdir, "/", lp->relname, 0) == ((void*)0))
     goto memerr;

    if (pflag != 0) {

     cp = strrchr(dstdir, '/');
     if (cp == ((void*)0))
      cp = strrchr(dstdir, '\\');
     if (cp != ((void*)0)) {
      if (Dynscat(&lp->lname, cp + 1, 0) == ((void*)0))
       goto memerr;
      TVFSPathToLocalPath(lp->lname);
     }
    }
   } else {
    if (Dynscat(&buf, lp->relname, 0) == ((void*)0))
     goto memerr;
   }
  } else {
   if ((dstdir[0] != '\0') && (strcmp(dstdir, "."))) {
    cp = strrchr(lp->relname, '/');
    if (cp == ((void*)0))
     cp = strrchr(lp->relname, '\\');
    if (cp != ((void*)0)) {
     cp++;
    } else {
     cp = lp->relname;
    }
    if (Dynscat(&buf, dstdir, "/", cp, 0) == ((void*)0))
     goto memerr;

    if (pflag != 0) {

     cp = strrchr(dstdir, '/');
     if (cp == ((void*)0))
      cp = strrchr(dstdir, '\\');
     if (cp != ((void*)0)) {
      if (Dynscat(&lp->lname, cp + 1, 0) == ((void*)0))
       goto memerr;
      TVFSPathToLocalPath(lp->lname);
     }
    }
   } else {
    cp = strrchr(lp->relname, '/');
    if (cp == ((void*)0))
     cp = strrchr(lp->relname, '\\');
    if (cp != ((void*)0)) {
     cp++;
    } else {
     cp = lp->relname;
    }
    if (Dynscat(&buf, cp, 0) == ((void*)0))
     goto memerr;
   }
  }
  lp->rname = buf;
  if (lp->rname == ((void*)0)) {
memerr:
   return (-1);
  }
  LocalPathToTVFSPath(lp->rname);
 }
 return (0);
}
