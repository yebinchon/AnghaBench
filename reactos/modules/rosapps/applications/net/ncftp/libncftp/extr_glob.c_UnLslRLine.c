
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long time_t ;
struct tm {int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_isdst; int tm_year; } ;
typedef long longest_int ;


 int LsMonthNameToNum (char*) ;
 char* SCANF_LONG_LONG ;
 int Strncat (char*,char*,size_t) ;
 int Strncpy (char*,char const* const,size_t) ;
 int atoi (char*) ;
 scalar_t__ isdigit (int) ;
 scalar_t__ islower (int) ;
 scalar_t__ isspace (int) ;
 scalar_t__ isupper (int) ;
 int memset (struct tm*,int ,int) ;
 long mktime (struct tm*) ;
 int sscanf (char*,char*,long*) ;
 char* strstr (char*,char*) ;
 scalar_t__ strtoq (char*,int *,int ) ;

__attribute__((used)) static int
UnLslRLine( char *const line,
  const char *const curdir,
  size_t curdirlen,
  char *fname,
  size_t fnamesize,
  char *linkto,
  size_t linktosize,
  int *ftype,
  longest_int *fsize,
  time_t *ftime,
  time_t now,
  int thisyear,
  int *plugend)
{
 char *cp;
 int mon = 0, dd = 0, hr = 0, min = 0, year = 0;
 char *monstart, *ddstart, *hrstart, *minstart, *yearstart;
 char *linktostart, *filestart = ((void*)0);
 char *sizestart;
 char *pe;
 struct tm ftm;
 for (cp = line; *cp != '\0'; cp++) {
  if ( (isdigit((int) *cp))
   && (isspace((int) cp[1]))
   && (isupper((int) cp[2]))
   && (islower((int) cp[3]))

   && (isspace((int) cp[5]))
   && (
((isdigit((int) cp[6])) && (isdigit((int) cp[7])))
|| ((isdigit((int) cp[6])) && (isspace((int) cp[7])))
|| ((isspace((int) cp[6])) && (isdigit((int) cp[7])))
   )
   && (isspace((int) cp[8]))
  ) {
   monstart = cp + 2;
   ddstart = cp + 6;
   if ( ((isspace((int) cp[9])) || (isdigit((int) cp[9])))
    && (isdigit((int) cp[10]))
    && (isdigit((int) cp[11]))
    && (isdigit((int) cp[12]))
    && ((isdigit((int) cp[13])) || (isspace((int) cp[13])))
   ) {

    yearstart = cp + 9;
    if (isspace((int) *yearstart))
     yearstart++;
    hrstart = ((void*)0);
    minstart = ((void*)0);
    filestart = cp + 15;
    cp[1] = '\0';
    cp[5] = '\0';
    cp[8] = '\0';
    cp[14] = '\0';
    mon = LsMonthNameToNum(monstart);
    dd = atoi(ddstart);
    hr = 23;
    min = 59;
    year = atoi(yearstart);

    pe = cp;
    while (isdigit((int) *pe))
     pe--;
    while (isspace((int) *pe))
     pe--;
    *plugend = (int) (pe - line) + 1;
    break;
   } else if (



    (isdigit((int) cp[10]))
    && (cp[11] == ':')
    && (isdigit((int) cp[12]))
    && (isdigit((int) cp[13]))
   ) {

    yearstart = ((void*)0);
    hrstart = cp + 9;
    minstart = cp + 12;
    filestart = cp + 15;
    cp[1] = '\0';
    cp[5] = '\0';
    cp[8] = '\0';
    cp[11] = '\0';
    cp[14] = '\0';
    mon = LsMonthNameToNum(monstart);
    dd = atoi(ddstart);
    hr = atoi(hrstart);
    min = atoi(minstart);
    year = 0;

    pe = cp;
    while (isdigit((int) *pe))
     pe--;
    while (isspace((int) *pe))
     pe--;
    *plugend = (int) (pe - line) + 1;
    break;
   }
  }
 }

 if (*cp == '\0')
  return (-1);

 linktostart = strstr(filestart, " -> ");
 if (linktostart != ((void*)0)) {
  *linktostart = '\0';
  linktostart += 4;
  (void) Strncpy(linkto, linktostart, linktosize);
 } else {
  *linkto = '\0';
 }

 if (curdirlen == 0) {
  (void) Strncpy(fname, filestart, fnamesize);
 } else {
  (void) Strncpy(fname, curdir, fnamesize);
  (void) Strncat(fname, filestart, fnamesize);
 }

 if (ftime != ((void*)0)) {
  (void) memset(&ftm, 0, sizeof(struct tm));
  ftm.tm_mon = mon;
  ftm.tm_mday = dd;
  ftm.tm_hour = hr;
  ftm.tm_min = min;
  ftm.tm_isdst = -1;
  if (year == 0) {






   ftm.tm_year = thisyear - 1900;
   *ftime = mktime(&ftm);
   if (*ftime == (time_t) -1) {

   } else if (*ftime > (now + (15552000L + 86400L))) {
    --ftm.tm_year;
    *ftime = mktime(&ftm);
   } else if (*ftime < (now - (15552000L + 86400L))) {
    ++ftm.tm_year;
    *ftime = mktime(&ftm);
   }
  } else {
   ftm.tm_year = year - 1900;
   *ftime = mktime(&ftm);
  }
 }

 if (fsize != ((void*)0)) {
  while ((cp > line) && (isdigit((int) *cp)))
   --cp;
  sizestart = cp + 1;





  {
   long fsize2 = 0L;

   (void) sscanf(sizestart, "%ld", &fsize2);
   *fsize = (longest_int) fsize2;
  }

 }

 switch (line[0]) {
  case 'd':
  case 'l':
   *ftype = (int) line[0];
   break;
  case 'b':
  case 'c':
  case 's':
   *ftype = (int) line[0];
   return (-1);
  default:
   *ftype = '-';
 }

 return (0);
}
