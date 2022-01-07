
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZE ;
 int TABLE_SIZE (char**) ;
 int dir_remove_last (int ,char*) ;
 char* getenv (char*) ;
 int installdir ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char*,...) ;
 int strcpy (char*,char*) ;
 int vim_mkdir (char*,int) ;
 int vimfiles_dir_choice ;



 char** vimfiles_subdirs ;

__attribute__((used)) static void
install_vimfilesdir(int idx)
{
    int i;
    char *p;
    char vimdir_path[BUFSIZE];
    char vimfiles_path[BUFSIZE];
    char tmp_dirname[BUFSIZE];



    switch (vimfiles_dir_choice)
    {
 case 128:
 {




     p = getenv("VIM");
     if (p == ((void*)0))
  dir_remove_last(installdir, vimdir_path);
     else
  strcpy(vimdir_path, p);
     break;
 }
 case 130:
 {

     p = getenv("HOME");
     if (p == ((void*)0))
     {
  printf("Internal error: $HOME is NULL\n");
  p = "c:\\";
     }
     strcpy(vimdir_path, p);
     break;
 }
 case 129:
 {

     return;
 }
    }



    sprintf(vimfiles_path, "%s\\vimfiles", vimdir_path);
    vim_mkdir(vimfiles_path, 0755);

    printf("Creating the following directories in \"%s\":\n", vimfiles_path);
    for (i = 0; i < TABLE_SIZE(vimfiles_subdirs); i++)
    {
 sprintf(tmp_dirname, "%s\\%s", vimfiles_path, vimfiles_subdirs[i]);
 printf("  %s", vimfiles_subdirs[i]);
 vim_mkdir(tmp_dirname, 0755);
    }
    printf("\n");
}
