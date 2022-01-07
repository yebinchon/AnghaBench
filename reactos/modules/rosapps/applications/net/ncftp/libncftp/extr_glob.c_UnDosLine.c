
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_isdst; scalar_t__ tm_mon; int tm_year; int tm_hour; void* tm_min; void* tm_mday; } ;
typedef long longest_int ;


 char* SCANF_LONG_LONG ;
 int Strncat (char*,char*,size_t) ;
 int Strncpy (char*,char const* const,size_t) ;
 void* atoi (char*) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ ispunct (int) ;
 int isspace (char) ;
 int memmove (char*,char*,scalar_t__) ;
 int memset (struct tm*,int ,int) ;
 int mktime (struct tm*) ;
 int sscanf (char*,char*,long*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strtoq (char*,int *,int ) ;

__attribute__((used)) static int
UnDosLine( char *const line,
  const char *const curdir,
  size_t curdirlen,
  char *fname,
  size_t fnamesize,
  int *ftype,
  longest_int *fsize,
  time_t *ftime)
{
 char *cp;
 int hour, year;
 char *filestart;
 char *sizestart;
 struct tm ftm;
 cp = line;
 if (
  isdigit((int) cp[0])
  && isdigit((int) cp[1])
  && ispunct((int) cp[2])
  && isdigit((int) cp[3])
  && isdigit((int) cp[4])
  && ispunct((int) cp[5])
  && isdigit((int) cp[6])
  && isdigit((int) cp[7])
 ) {
  (void) memset(&ftm, 0, sizeof(struct tm));
  ftm.tm_isdst = -1;
  cp[2] = '\0';
  ftm.tm_mon = atoi(cp + 0);
  if (ftm.tm_mon > 0)
   ftm.tm_mon -= 1;
  cp[5] = '\0';
  ftm.tm_mday = atoi(cp + 3);
  if ((isdigit((int) cp[8])) && (isdigit((int) cp[9]))) {

   cp[10] = '\0';
   year = atoi(cp + 6);
   if (year > 1900)
    year -= 1900;
   ftm.tm_year = year;
   cp += 11;
  } else {

   cp[8] = '\0';
   year = atoi(cp + 6);
   if (year < 98)
    year += 100;
   ftm.tm_year = year;
   cp += 9;
  }

  for (;;) {
   if (*cp == '\0')
    return (-1);
   if (isdigit(*cp))
    break;
   cp++;
  }

  cp[2] = '\0';
  hour = atoi(cp);
  if (((cp[5] == 'P') || (cp[5] == 'p')) && (hour < 12))
   hour += 12;
  else if (((cp[5] == 'A') || (cp[5] == 'a')) && (hour == 12))
   hour -= 12;
  ftm.tm_hour = hour;
  cp[5] = '\0';
  ftm.tm_min = atoi(cp + 3);
  *ftime = mktime(&ftm);
  if (*ftype == (time_t) -1)
   return (-1);

  cp += 6;
  *ftype = '-';
  for (;;) {
   if (*cp == '\0')
    return (-1);
   if ((*cp == '<') && (cp[1] == 'D')) {

    *ftype = 'd';
    cp += 5;
    break;
   } else if ((*cp == '<') && (cp[1] == 'J')) {







    *ftype = 'd';
    cp += 10;
    break;
   } else if (isdigit(*cp)) {
    break;
   } else {
    cp++;
   }
  }

  sizestart = cp;
  for (;;) {
   if (*cp == '\0')
    return (-1);






   if (!isdigit(*cp)) {
    *cp++ = '\0';
    break;
   }
   cp++;
  }

  if (fsize != ((void*)0)) {
   *fsize = (longest_int) 0;
   if (*ftype != 'd') {
    long fsize2 = 0L;

    (void) sscanf(sizestart, "%ld", &fsize2);
    *fsize = (longest_int) fsize2;
   }

  }

  for (;;) {
   if (*cp == '\0')
    return (-1);
   if (!isspace(*cp)) {
    break;
   }
   cp++;
  }

  filestart = cp;
  if (curdirlen == 0) {
   (void) Strncpy(fname, filestart, fnamesize);
  } else {
   (void) Strncpy(fname, curdir, fnamesize);
   (void) Strncat(fname, filestart, fnamesize);
  }

  return (0);
 }
 return (-1);
}
