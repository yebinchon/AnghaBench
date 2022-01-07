
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int line ;
struct TYPE_5__ {char* bookmarkName; char* name; } ;
typedef int FILE ;
typedef TYPE_1__ Bookmark ;


 int CloseBookmarkFile (int *) ;
 int * FGets (char*,int,int *) ;
 scalar_t__ ISTREQ (char*,char const* const) ;
 scalar_t__ ISTRNEQ (char*,char const* const,size_t) ;
 int * OpenBookmarkFile (int *) ;
 scalar_t__ ParseHostLine (char*,TYPE_1__*) ;
 scalar_t__ gBookmarkMatchMode ;
 int memset (TYPE_1__*,int ,int) ;
 char* strchr (char*,char) ;
 size_t strlen (char const* const) ;

int
GetBookmark(const char *const bmabbr, Bookmark *bmp)
{
 FILE *fp;
 char line[512];
 Bookmark byHostName;
 Bookmark byHostAbbr;
 Bookmark byBmAbbr;
 size_t byBmNameFlag = 0;
 size_t byBmAbbrFlag = 0;
 size_t byHostNameFlag = 0;
 size_t byHostAbbrFlag = 0;
 int result = -1;
 int exactMatch = 0;
 size_t bmabbrLen;
 char *cp;

 fp = OpenBookmarkFile(((void*)0));
 if (fp == ((void*)0))
  return (-1);

 bmabbrLen = strlen(bmabbr);
 while (FGets(line, sizeof(line), fp) != ((void*)0)) {
  if (ParseHostLine(line, bmp) < 0)
   continue;
  if (ISTREQ(bmp->bookmarkName, bmabbr)) {

   byBmNameFlag = bmabbrLen;
   exactMatch = 1;
   break;
  } else if (ISTRNEQ(bmp->bookmarkName, bmabbr, bmabbrLen)) {



   byBmAbbr = *bmp;
   byBmAbbrFlag = bmabbrLen;
  } else if (ISTREQ(bmp->name, bmabbr)) {



   byHostName = *bmp;
   byHostNameFlag = bmabbrLen;
  } else if ((cp = strchr(bmp->name, '.')) != ((void*)0)) {

   if (ISTRNEQ(bmp->name, "ftp", 3)) {
    cp = cp + 1;
   } else if (ISTRNEQ(bmp->name, "www", 3)) {
    cp = cp + 1;
   } else {
    cp = bmp->name;
   }
   if (ISTRNEQ(cp, bmabbr, bmabbrLen)) {



    byHostAbbr = *bmp;
    byHostAbbrFlag = bmabbrLen;
   }
  }
 }

 if (gBookmarkMatchMode == 0) {



  if (exactMatch != 0) {
   result = 0;
  }
 } else {

  if (byBmNameFlag != 0) {

   result = 0;
  } else if (byBmAbbrFlag != 0) {
   result = 0;
   *bmp = byBmAbbr;
  } else if (byHostNameFlag != 0) {
   result = 0;
   *bmp = byHostName;
  } else if (byHostAbbrFlag != 0) {
   result = 0;
   *bmp = byHostAbbr;
  }
 }

 if (result != 0)
  memset(bmp, 0, sizeof(Bookmark));

 CloseBookmarkFile(fp);
 return (result);
}
