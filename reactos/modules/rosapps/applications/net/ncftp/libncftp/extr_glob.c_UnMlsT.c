
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* longest_int ;
typedef int line ;
struct TYPE_4__ {int mode; long fsize; char ftype; char* fname; int perm; void* gid; void* uid; int group; int owner; int ftime; } ;
typedef TYPE_1__* MLstItemPtr ;
typedef int MLstItem ;


 scalar_t__ ISTREQ (char*,char*) ;
 scalar_t__ ISTRNEQ (char*,char*,int) ;
 char* SCANF_LONG_LONG ;
 int STRNCPY (int ,char*) ;
 int UnMDTMDate (char*) ;
 void* atoi (char*) ;
 int isspace (char) ;
 int kModTimeUnknown ;
 long kSizeUnknown ;
 int memcpy (char*,char const* const,size_t) ;
 int memset (TYPE_1__* const,int ,int) ;
 int sscanf (char*,char*,long*) ;
 size_t strlen (char const* const) ;
 scalar_t__ strtoq (char*,int *,int ) ;

int
UnMlsT(const char *const line0, const MLstItemPtr mlip)
{
 char *cp, *val, *fact;
 int ec;
 size_t len;
 char line[1024];

 memset(mlip, 0, sizeof(MLstItem));
 mlip->mode = -1;
 mlip->fsize = kSizeUnknown;
 mlip->ftype = '-';
 mlip->ftime = kModTimeUnknown;

 len = strlen(line0);
 if (len > (sizeof(line) - 1))
  return (-1);



 memcpy(line, line0, len + 1);


 for (cp = line; *cp != '\0'; cp++) {
  if (! isspace(*cp))
   break;
 }

 while (*cp != '\0') {
  for (fact = cp; ; cp++) {
   if ((*cp == '\0') || (*cp == ' ')) {

    return (-1);
   }
   if (*cp == '=') {

    *cp++ = '\0';
    break;
   }
  }
  for (val = cp; ; cp++) {
   if (*cp == '\0') {

    return (-1);
   }
   if (*cp == ' ') {
    ec = ' ';
    *cp++ = '\0';
    break;
   } else if (*cp == ';') {
    if (cp[1] == ' ') {
     ec = ' ';
     *cp++ = '\0';
     *cp++ = '\0';
    } else {
     ec = ';';
     *cp++ = '\0';
    }
    break;
   }
  }
  if (ISTRNEQ(fact, "OS.", 3))
   fact += 3;
  if (ISTREQ(fact, "type")) {
   if (ISTREQ(val, "file")) {
    mlip->ftype = '-';
   } else if (ISTREQ(val, "dir")) {
    mlip->ftype = 'd';
   } else if (ISTREQ(val, "cdir")) {

    return (-2);
   } else if (ISTREQ(val, "pdir")) {

    return (-2);
   } else {

    return (-1);
   }
  } else if (ISTREQ(fact, "UNIX.mode")) {
   if (val[0] == '0')
    sscanf(val, "%o", &mlip->mode);
   else
    sscanf(val, "%i", &mlip->mode);
   if (mlip->mode != (-1))
    mlip->mode &= 00777;
  } else if (ISTREQ(fact, "perm")) {
   STRNCPY(mlip->perm, val);
  } else if (ISTREQ(fact, "size")) {





   {
    long fsize2 = 0L;

    (void) sscanf(val, "%ld", &fsize2);
    mlip->fsize = (longest_int) fsize2;
   }

  } else if (ISTREQ(fact, "modify")) {
   mlip->ftime = UnMDTMDate(val);
  } else if (ISTREQ(fact, "UNIX.owner")) {
   STRNCPY(mlip->owner, val);
  } else if (ISTREQ(fact, "UNIX.group")) {
   STRNCPY(mlip->group, val);
  } else if (ISTREQ(fact, "UNIX.uid")) {
   mlip->uid = atoi(val);
  } else if (ISTREQ(fact, "UNIX.gid")) {
   mlip->gid = atoi(val);
  } else if (ISTREQ(fact, "perm")) {
   STRNCPY(mlip->perm, val);
  }


  if (ec == ' ')
   break;
 }

 len = strlen(cp);
 if (len > (sizeof(mlip->fname) - 1)) {

  return (-1);
 }
 memcpy(mlip->fname, cp, len);



 return (0);
}
