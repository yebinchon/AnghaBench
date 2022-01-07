
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int FILE ;


 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 char* gl_home_dir ;
 int gl_set_home_dir (int *) ;
 int gl_vi_preferred ;
 int snprintf (char*,int,char*,char*,char*) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static void
gl_check_inputrc_for_vi(void)
{
 FILE *fp;
 char path[256];
 gl_set_home_dir(((void*)0));
 if (gl_home_dir == ((void*)0))
  return;




 if (sizeof(path) >= (strlen(gl_home_dir) + strlen("/.inputrc")))
  return;

 sprintf(path, "%s%s", gl_home_dir, "/.inputrc");


 fp = fopen(
  path,



  "r"

 );

 if (fp == ((void*)0))
  return;

 while (fgets(path, sizeof(path) - 1, fp) != ((void*)0)) {
  if ((strstr(path, "editing-mode") != ((void*)0)) && (strstr(path, "vi") != ((void*)0))) {
   gl_vi_preferred = 1;
   break;
  }
 }

 (void) fclose(fp);
}
