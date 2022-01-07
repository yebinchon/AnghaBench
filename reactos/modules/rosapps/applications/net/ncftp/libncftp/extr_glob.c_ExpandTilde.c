
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;
typedef char* string ;
typedef int hdir ;


 int GetHomeDir (char*,int) ;
 scalar_t__ IsLocalPathDelim (char) ;
 char* LOCAL_PATH_DELIM_STR ;
 int STRNCPY (char*,char*) ;
 char* StrFindLocalPathDelim (char*) ;
 int Strncat (char*,char*,size_t) ;
 int Strncpy (char*,char*,size_t) ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ isalnum (int) ;

__attribute__((used)) static void
ExpandTilde(char *pattern, size_t siz)
{
 string pat;
 char *cp, *rest, *firstent;


 struct passwd *pw;

 string hdir;

 if ((pattern[0] == '~') &&
 (isalnum((int) pattern[1]) || IsLocalPathDelim(pattern[1]) || (pattern[1] == '\0'))) {
  (void) STRNCPY(pat, pattern);
  if ((cp = StrFindLocalPathDelim(pat)) != ((void*)0)) {
   *cp = 0;
   rest = cp + 1;
  } else {
   rest = ((void*)0);
  }
  if (pat[1] == '\0') {

   GetHomeDir(hdir, sizeof(hdir));
   firstent = hdir;
  } else {




   pw = getpwnam(pat + 1);
   if (pw != ((void*)0))
    firstent = pw->pw_dir;
   else
    return;

  }

  (void) Strncpy(pattern, firstent, siz);
  if (rest != ((void*)0)) {
   (void) Strncat(pattern, LOCAL_PATH_DELIM_STR, siz);
   (void) Strncat(pattern, rest, siz);
  }
 }
}
