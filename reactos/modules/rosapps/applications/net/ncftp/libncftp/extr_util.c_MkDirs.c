
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _stat {int dummy; } ;
struct Stat {int st_mode; } ;
typedef int s ;
typedef int mode_t ;
typedef int LPSECURITY_ATTRIBUTES ;


 int CreateDirectory (char const* const,int ) ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOTDIR ;
 int F_OK ;
 int IsLocalPathDelim (char const) ;
 scalar_t__ IsUNCPrefixed (char const* const) ;
 char LOCAL_PATH_DELIM ;
 int S_ISDIR (int ) ;
 scalar_t__ Stat (char const* const,struct Stat*) ;
 char* StrFindLocalPathDelim (char const* const) ;
 char* StrRFindLocalPathDelim (char*) ;
 int _access (char const* const,int) ;
 scalar_t__ _stat (char const* const,struct Stat*) ;
 int access (char const* const,int ) ;
 int errno ;
 scalar_t__ isalpha (char const) ;
 int mkdir (char const* const,int ) ;
 int strncpy (char*,char const* const,int) ;

int
MkDirs(const char *const newdir, int mode1)
{
 char s[512];
 int rc;
 char *cp, *sl;




 struct Stat st;
 mode_t mode = (mode_t) mode1;
 if (access(newdir, F_OK) == 0) {
  if (Stat(newdir, &st) < 0)
   return (-1);
  if (! S_ISDIR(st.st_mode)) {
   errno = ENOTDIR;
   return (-1);
  }
  return 0;
 }


 (void) strncpy(s, newdir, sizeof(s));
 if (s[sizeof(s) - 1] != '\0') {



  errno = EINVAL;
  return (-1);

 }

 cp = StrRFindLocalPathDelim(s);
 if (cp == ((void*)0)) {





  rc = mkdir(newdir, mode);
  return (rc);

 } else if (cp[1] == '\0') {

  --cp;
  while (cp > s) {
   if (! IsLocalPathDelim(*cp))
    break;
   --cp;
  }
  cp[1] = '\0';
  cp = StrRFindLocalPathDelim(s);
  if (cp == ((void*)0)) {




   rc = mkdir(s, mode);
   return (rc);

  }
 }
 sl = ((void*)0);
 for (;;) {
  *cp = '\0';



  rc = access(s, F_OK);

  if (sl != ((void*)0))
   *sl = LOCAL_PATH_DELIM;
  if (rc == 0) {
   *cp = LOCAL_PATH_DELIM;
   break;
  }
  sl = cp;
  cp = StrRFindLocalPathDelim(s);
  if (cp == ((void*)0)) {







   if (sl != ((void*)0))
    *sl = LOCAL_PATH_DELIM;






   cp = s - 1;
   break;
  }
 }

 for (;;) {




  sl = StrFindLocalPathDelim(cp + 1);
  if (sl == s) {







   ++cp;
   sl = StrFindLocalPathDelim(cp + 1);
  }
  if (sl != ((void*)0)) {
   *sl = '\0';
  }




  rc = mkdir(s, mode);
  if (rc < 0)
   return rc;

  if (sl == ((void*)0))
   break;
  *sl = LOCAL_PATH_DELIM;
  cp = sl;
 }
 return (0);
}
