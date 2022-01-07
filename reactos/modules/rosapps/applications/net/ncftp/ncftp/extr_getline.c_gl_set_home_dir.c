
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wdir ;
struct passwd {char* pw_dir; } ;


 int GetWindowsDirectory (char*,int) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ getlogin () ;
 struct passwd* getpwnam (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 char* gl_home_dir ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char*,int) ;

void
gl_set_home_dir(const char *homedir)
{
 size_t len;




 struct passwd *pw;
 char *cp;


 if (gl_home_dir != ((void*)0)) {
  free(gl_home_dir);
  gl_home_dir = ((void*)0);
 }

 if (homedir == ((void*)0)) {
  cp = (char *) getlogin();
  if (cp == ((void*)0)) {
   cp = (char *) getenv("LOGNAME");
   if (cp == ((void*)0))
    cp = (char *) getenv("USER");
  }
  pw = ((void*)0);
  if (cp != ((void*)0))
   pw = getpwnam(cp);
  if (pw == ((void*)0))
   pw = getpwuid(getuid());
  if (pw == ((void*)0))
   return;
  homedir = pw->pw_dir;

 }

 len = strlen(homedir) + 1;
 gl_home_dir = (char *) malloc(len);
 if (gl_home_dir != ((void*)0)) {
  memcpy(gl_home_dir, homedir, len);
 }
}
