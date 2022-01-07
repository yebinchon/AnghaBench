
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {char* lname; char* relname; struct TYPE_4__* next; } ;
typedef TYPE_1__* FileInfoPtr ;
typedef TYPE_2__* FileInfoListPtr ;


 int * Dynscat (char**,char const*,char*,...) ;
 int TVFSPathToLocalPath (char*) ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

int
ComputeLNames(FileInfoListPtr dst, const char *srcdir, const char *dstdir, int nochop)
{
 FileInfoPtr lp, lp2;
 char *buf;
 char *cp;

 if (srcdir != ((void*)0)) {
  cp = strrchr(srcdir, '/');
  if (cp == ((void*)0))
   cp = strrchr(srcdir, '\\');
  if (cp != ((void*)0))
   srcdir = cp + 1;
 }
 if (dstdir == ((void*)0))
  dstdir = ".";

 for (lp = dst->first; lp != ((void*)0); lp = lp2) {
  lp2 = lp->next;

  buf = ((void*)0);
  if (nochop != 0) {
   if ((dstdir[0] != '\0') && (strcmp(dstdir, "."))) {
    if (Dynscat(&buf, dstdir, "/", 0) == ((void*)0))
     goto memerr;
   }
   if (lp->lname != ((void*)0)) {
    if (Dynscat(&buf, lp->lname, "/", 0) == ((void*)0))
     goto memerr;
   } else if (srcdir != ((void*)0)) {
    if (Dynscat(&buf, srcdir, "/", 0) == ((void*)0))
     goto memerr;
   }
   if (Dynscat(&buf, lp->relname, 0) == ((void*)0))
    goto memerr;
  } else {
   if ((dstdir[0] != '\0') && (strcmp(dstdir, "."))) {
    cp = strrchr(lp->relname, '/');
    if (cp == ((void*)0))
     cp = strrchr(lp->relname, '\\');
    if (cp == ((void*)0)) {
     cp = lp->relname;
    } else {
     cp++;
    }
    if (Dynscat(&buf, dstdir, "/", cp, 0) == ((void*)0))
     goto memerr;
   } else {
    cp = strrchr(lp->relname, '/');
    if (cp == ((void*)0))
     cp = strrchr(lp->relname, '\\');
    if (cp == ((void*)0)) {
     cp = lp->relname;
    } else {
     cp++;
    }
    if (Dynscat(&buf, cp, 0) == ((void*)0))
     goto memerr;
   }
  }
  if (buf == ((void*)0)) {
memerr:
   return (-1);
  }
  if (lp->lname != ((void*)0)) {
   free(lp->lname);
   lp->lname = ((void*)0);
  }
  lp->lname = buf;
  TVFSPathToLocalPath(lp->lname);
 }
 return (0);
}
