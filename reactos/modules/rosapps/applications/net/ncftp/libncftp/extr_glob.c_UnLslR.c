
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_year; } ;
typedef scalar_t__ longest_int ;
typedef int linkto ;
typedef int fname ;
struct TYPE_13__ {size_t relnameLen; int type; char* plug; scalar_t__ size; int mdtm; int * rlinkto; int * lname; int * rname; int * relname; } ;
struct TYPE_12__ {size_t maxFileLen; size_t maxPlugLen; } ;
struct TYPE_11__ {TYPE_1__* first; } ;
struct TYPE_10__ {int line; struct TYPE_10__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__* LineListPtr ;
typedef TYPE_3__* FileInfoListPtr ;
typedef TYPE_4__ FileInfo ;


 int AddFileInfo (TYPE_3__*,TYPE_4__*) ;
 int InitFileInfoList (TYPE_3__*) ;
 char* STRNCPY (char*,int ) ;
 int * StrDup (char*) ;
 int UnDosLine (char*,char*,size_t,char*,int,int*,scalar_t__*,int *) ;
 int UnLslRLine (char*,char*,size_t,char*,int,char*,int,int*,scalar_t__*,int *,int ,int,int*) ;
 int isspace (int) ;
 int kServerTypeMicrosoftFTP ;
 struct tm* localtime (int *) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,size_t) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int time (int *) ;

int
UnLslR(FileInfoListPtr filp, LineListPtr llp, int serverType)
{
 char curdir[256];
 char line[256];
 int hadblankline = 0;
 int len;
 size_t curdirlen = 0;
 char fname[256];
 char linkto[256];
 char *cp;
 longest_int fsize;
 int ftype;
 time_t ftime, now;
 int thisyear;
 struct tm *nowtm;
 int rc;
 LinePtr lp;
 FileInfo fi;
 int linesread = 0;
 int linesconverted = 0;
 size_t maxFileLen = 0;
 size_t maxPlugLen = 0;
 size_t fileLen;
 int plugend;

 (void) time(&now);
 nowtm = localtime(&now);
 if (nowtm == ((void*)0))
  thisyear = 1970;
 else
  thisyear = nowtm->tm_year + 1900;

 curdir[0] = '\0';

 InitFileInfoList(filp);
 for (lp = llp->first; lp != ((void*)0); lp = lp->next) {
  len = (int) strlen(STRNCPY(line, lp->line));
  if ((line[0] == 't') && (strncmp(line, "total", 5) == 0)) {

   if (line[len - 1] != ':') {
    hadblankline = 0;
    continue;
   }

  } else {
   for (cp = line; ; cp++) {
    if ((*cp == '\0') || (!isspace((int) *cp)))
     break;
   }
   if (*cp == '\0') {


    hadblankline = 1;
    continue;
   }
  }

  if ((hadblankline != 0) && (line[len - 1] == ':')) {

   hadblankline = 0;
   if ((line[0] == '.') && (line[1] == '/')) {
    line[len - 1] = '/';
    (void) memcpy(curdir, line + 2, (size_t) len + 1 - 2);
    curdirlen = (size_t) (len - 2);
   } else if ((line[0] == '.') && (line[1] == '\\')) {
    line[len - 1] = '\\';
    (void) memcpy(curdir, line + 2, (size_t) len + 1 - 2);
    curdirlen = (size_t) (len - 2);
   } else {
    line[len - 1] = '/';
    (void) memcpy(curdir, line, (size_t) len + 1);
    curdirlen = (size_t) len;
   }
   continue;
  }

  linesread++;
  rc = UnLslRLine(line, curdir, curdirlen, fname, sizeof(fname), linkto, sizeof(linkto), &ftype, &fsize, &ftime, now, thisyear, &plugend);
  if ((rc < 0) && (serverType == kServerTypeMicrosoftFTP)) {
   rc = UnDosLine(line, curdir, curdirlen, fname, sizeof(fname), &ftype, &fsize, &ftime);
   if (rc == 0) {
    *linkto = '\0';
    plugend = 0;
   }
  }
  if (rc == 0) {
   linesconverted++;
   fileLen = strlen(fname);
   if (fileLen > maxFileLen)
    maxFileLen = fileLen;
   fi.relnameLen = fileLen;
   fi.relname = StrDup(fname);
   fi.rname = ((void*)0);
   fi.lname = ((void*)0);
   fi.rlinkto = (linkto[0] == '\0') ? ((void*)0) : StrDup(linkto);
   fi.mdtm = ftime;
   fi.size = (longest_int) fsize;
   fi.type = ftype;
   if (plugend > 0) {
    fi.plug = (char *) malloc((size_t) plugend + 1);
    if (fi.plug != ((void*)0)) {
     (void) memcpy(fi.plug, line, (size_t) plugend);
     fi.plug[plugend] = '\0';
     if ((size_t) plugend > maxPlugLen)
      maxPlugLen = (size_t) plugend;
    }
   } else {
    fi.plug = (char *) malloc(32);
    if (fi.plug != ((void*)0)) {
     strcpy(fi.plug, "----------   1 ftpuser  ftpusers");
     fi.plug[0] = (char) ftype;
     if (30 > maxPlugLen)
      maxPlugLen = (size_t) 30;
    }
   }
   (void) AddFileInfo(filp, &fi);
  }

  hadblankline = 0;
 }

 filp->maxFileLen = maxFileLen;
 filp->maxPlugLen = maxPlugLen;
 if (linesread == 0)
  return (0);
 return ((linesconverted > 0) ? linesconverted : (-1));
}
