
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int og ;
typedef scalar_t__ longest_int ;
struct TYPE_16__ {size_t relnameLen; char type; int * plug; scalar_t__ size; int mdtm; int * rlinkto; int * lname; int * rname; int * relname; } ;
struct TYPE_15__ {size_t maxFileLen; size_t maxPlugLen; } ;
struct TYPE_14__ {TYPE_2__* first; } ;
struct TYPE_13__ {int line; struct TYPE_13__* next; } ;
struct TYPE_12__ {char* fname; char* linkto; char ftype; int mode; char* perm; char* owner; char* group; scalar_t__ fsize; int ftime; } ;
typedef TYPE_1__ MLstItem ;
typedef TYPE_2__* LinePtr ;
typedef TYPE_3__* LineListPtr ;
typedef TYPE_4__* FileInfoListPtr ;
typedef TYPE_5__ FileInfo ;


 int AddFileInfo (TYPE_4__*,TYPE_5__*) ;
 int InitFileInfoList (TYPE_4__*) ;
 int STRNCAT (char*,char*) ;
 int * StrDup (char*) ;
 int UnMlsT (int ,TYPE_1__*) ;
 char** rwx ;
 int snprintf (char*,int,char*) ;
 char* sprintf (char*,char*,char const*,char const*,...) ;
 int * strchr (char*,char) ;
 size_t strlen (char*) ;

int
UnMlsD(FileInfoListPtr filp, LineListPtr llp)
{
 MLstItem mli;
 char plug[64];
 char og[32];
 int rc;
 LinePtr lp;
 FileInfo fi;
 int linesread = 0;
 int linesconverted = 0;
 int linesignored = 0;
 size_t maxFileLen = 0;
 size_t maxPlugLen = 0;
 size_t fileLen, plugLen;
 int m1, m2, m3;
 const char *cm1, *cm2, *cm3;

 InitFileInfoList(filp);
 for (lp = llp->first; lp != ((void*)0); lp = lp->next) {
  linesread++;
  rc = UnMlsT(lp->line, &mli);
  if (rc == 0) {
   linesconverted++;
   fileLen = strlen(mli.fname);
   if (fileLen > maxFileLen)
    maxFileLen = fileLen;
   fi.relnameLen = fileLen;
   fi.relname = StrDup(mli.fname);
   fi.rname = ((void*)0);
   fi.lname = ((void*)0);
   fi.rlinkto = (mli.linkto[0] == '\0') ? ((void*)0) : StrDup(mli.linkto);
   fi.mdtm = mli.ftime;
   fi.size = (longest_int) mli.fsize;
   fi.type = mli.ftype;
   plug[0] = (char) mli.ftype;
   plug[1] = '\0';
   m1 = 0;
   m2 = 0;
   m3 = -1;
   if (mli.mode != (-1)) {
    m1 = (mli.mode & 00700) >> 6;
    m2 = (mli.mode & 00070) >> 3;
    m3 = (mli.mode & 00007);
   }
   if (mli.perm[0] != '\0') {
    m3 = 0;
    if (fi.type == 'd') {
     if (strchr(mli.perm, 'e') != ((void*)0)) {

      m3 |= 00001;
     }
     if (strchr(mli.perm, 'c') != ((void*)0)) {

      m3 |= 00002;
     }
     if (strchr(mli.perm, 'l') != ((void*)0)) {

      m3 |= 00004;
     }
    } else {
     if (strchr(mli.perm, 'w') != ((void*)0)) {

      m3 |= 00002;
     }
     if (strchr(mli.perm, 'r') != ((void*)0)) {

      m3 |= 00004;
     }
    }
   }
   if (m3 != (-1)) {
    cm1 = rwx[m1];
    cm2 = rwx[m2];
    cm3 = rwx[m3];
    sprintf(plug + 1, "%s%s%s", cm1, cm2, cm3);
   }
   if (mli.owner[0] != '\0') {
    if (mli.group[0] != '\0') {



     sprintf(og,

      "   %-8.8s %s",
      mli.owner, mli.group
     );
     STRNCAT(plug, og);
    } else {
     STRNCAT(plug, "   ");
     STRNCAT(plug, mli.owner);
    }
   }
   fi.plug = StrDup(plug);
   if (fi.plug != ((void*)0)) {
    plugLen = strlen(plug);
    if (plugLen > maxPlugLen)
     maxPlugLen = plugLen;
   }
   (void) AddFileInfo(filp, &fi);
  } else if (rc == (-2)) {
   linesignored++;
  }
 }

 filp->maxFileLen = maxFileLen;
 filp->maxPlugLen = maxPlugLen;
 if (linesread == 0)
  return (0);
 linesconverted += linesignored;
 return ((linesconverted > 0) ? linesconverted : (-1));
}
