
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int unoptstr ;
typedef int itempath ;
struct TYPE_26__ {int serverType; } ;
struct TYPE_24__ {int * vec; } ;
struct TYPE_25__ {TYPE_3__ fil; } ;
struct TYPE_23__ {TYPE_1__* first; } ;
struct TYPE_22__ {char* line; struct TYPE_22__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__ LineList ;
typedef TYPE_3__* FileInfoListPtr ;
typedef TYPE_3__ FileInfoList ;
typedef int FILE ;


 int DisposeLineListContents (TYPE_2__*) ;
 scalar_t__ FTPListToMemory2 (TYPE_6__*,char*,TYPE_2__*,char*,int,int*) ;
 int InitFileInfoList (TYPE_3__*) ;
 int InitLineList (TYPE_2__*) ;
 int Ls1 (TYPE_3__*,int,int *) ;
 int LsC (TYPE_3__*,int,int *) ;
 int LsCacheAdd (char*,TYPE_3__*) ;
 int LsCacheLookup (char*) ;
 int LsL (TYPE_3__*,int,int,int *) ;
 int PathCat (char*,int,int ,char*) ;
 int STRNCAT (char*,char const* const) ;
 int SortFileInfoList (TYPE_3__*,int,int) ;
 int Trace (int ,char*,...) ;
 int UnLslR (TYPE_3__*,TYPE_2__*,int ) ;
 int UnMlsD (TYPE_3__*,TYPE_2__*) ;
 int VectorizeFileInfoList (TYPE_3__*) ;
 int fprintf (int *,char*,...) ;
 TYPE_6__ gConn ;
 TYPE_5__* gLsCache ;
 int gRemoteCWD ;
 int memset (char*,int ,int) ;
 int stderr ;

void
Ls(const char *const item, int listmode, const char *const options, FILE *stream)
{
 char itempath[512];
 FileInfoList fil;
 FileInfoListPtr filp;
 LinePtr linePtr, nextLinePtr;
 LineList dirContents;
 int parsed;
 int linkedTo;
 int endChars;
 int rlisted;
 int opt;
 const char *cp;
 int sortBy;
 int sortOrder;
 int unknownOpts;
 char optstr[32];
 char unoptstr[32];
 int doNotUseCache;
 int wasInCache;
 int mlsd;
 int ci;

 InitLineList(&dirContents);
 InitFileInfoList(&fil);

 sortBy = 'n';
 sortOrder = 'a';
 linkedTo = 0;
 endChars = (listmode == 'C') ? 1 : 0;
 unknownOpts = 0;
 memset(unoptstr, 0, sizeof(unoptstr));
 unoptstr[0] = '-';
 doNotUseCache = 0;
 rlisted = 0;

 for (cp = options; *cp != '\0'; cp++) {
  opt = *cp;
  switch (opt) {
   case 't':
    sortBy = 't';
    break;
   case 'S':
    sortBy = 's';
    break;
   case 'r':
    sortOrder = 'd';
    break;
   case 'L':
    linkedTo = 1;
    break;
   case 'f':
    doNotUseCache = 1;
    break;
   case 'F':
   case 'p':
    endChars = 1;
    break;
   case '1':
   case 'C':
   case 'l':
    listmode = opt;
    break;
   case '-':
    break;
   default:
    if (unknownOpts < ((int) sizeof(unoptstr) - 2))
     unoptstr[unknownOpts + 1] = opt;
    unknownOpts++;
    break;
  }
 }


 PathCat(itempath, sizeof(itempath), gRemoteCWD,
  (item == ((void*)0)) ? "." : item);

 if (unknownOpts > 0) {




  Trace(0, "ls caching not used because of ls flags: %s\n", unoptstr);
  optstr[0] = '-';
  optstr[1] = listmode;
  optstr[2] = '\0';
  (void) STRNCAT(optstr, options);
  if ((FTPListToMemory2(&gConn, (item == ((void*)0)) ? "" : item, &dirContents, optstr, 1, 0)) < 0) {
   if (stream != ((void*)0))
    (void) fprintf(stderr, "List failed.\n");
   return;
  }

  rlisted = 1;
  parsed = -1;
  wasInCache = 0;
  filp = ((void*)0);
 } else if ((doNotUseCache != 0) || ((ci = LsCacheLookup(itempath)) < 0)) {

  wasInCache = 0;

  mlsd = 1;
  if ((FTPListToMemory2(&gConn, (item == ((void*)0)) ? "" : item, &dirContents, "-l", 1, &mlsd)) < 0) {
   if (stream != ((void*)0))
    (void) fprintf(stderr, "List failed.\n");
   return;
  }

  rlisted = 1;
  filp = &fil;
  if (mlsd != 0) {
   parsed = UnMlsD(filp, &dirContents);
   if (parsed < 0) {
    Trace(0, "UnMlsD: %d\n", parsed);
   }
  } else {
   parsed = UnLslR(filp, &dirContents, gConn.serverType);
   if (parsed < 0) {
    Trace(0, "UnLslR: %d\n", parsed);
   }
  }
  if (parsed >= 0) {
   VectorizeFileInfoList(filp);
   if (filp->vec == ((void*)0)) {
    if (stream != ((void*)0))
     (void) fprintf(stderr, "List processing failed.\n");
    return;
   }
  }
 } else {
  filp = &gLsCache[ci].fil;
  wasInCache = 1;
  parsed = 1;
  Trace(0, "ls cache hit: %s\n", itempath);
 }

 if (rlisted != 0) {
  Trace(0, "Remote listing contents {\n");
  for (linePtr = dirContents.first;
   linePtr != ((void*)0);
   linePtr = nextLinePtr)
  {
   nextLinePtr = linePtr->next;
   Trace(0, "    %s\n", linePtr->line);
  }
  Trace(0, "}\n");
 }

 if (parsed >= 0) {
  SortFileInfoList(filp, sortBy, sortOrder);
  if (stream != ((void*)0)) {
   if (listmode == 'l')
    LsL(filp, endChars, linkedTo, stream);
   else if (listmode == '1')
    Ls1(filp, endChars, stream);
   else
    LsC(filp, endChars, stream);
  }
  if (wasInCache == 0) {
   LsCacheAdd(itempath, filp);
  }
 } else if (stream != ((void*)0)) {
  for (linePtr = dirContents.first;
   linePtr != ((void*)0);
   linePtr = nextLinePtr)
  {
   nextLinePtr = linePtr->next;
   (void) fprintf(stream, "%s\n", linePtr->line);
   Trace(0, "    %s\n", linePtr->line);
  }
 }

 DisposeLineListContents(&dirContents);
}
