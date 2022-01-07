
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZE ;
 int free (char*) ;
 char* searchpath_save (char*) ;
 int sprintf (char*,char*,char*,...) ;
 char* strchr (char*,char) ;
 int system (char*) ;

__attribute__((used)) static void
run_command(char *cmd)
{
    char *cmd_path;
    char cmd_buf[BUFSIZE];
    char *p;





    cmd_path = searchpath_save("cmd.exe");
    if (cmd_path != ((void*)0))
    {






 while ((p = strchr(cmd_path, '/')) != ((void*)0))
     *p = '\\';
 sprintf(cmd_buf, "%s /c start \"vimcmd\" /wait %s", cmd_path, cmd);
 free(cmd_path);
    }
    else
    {

 sprintf(cmd_buf, "start /w %s", cmd);
    }
    system(cmd_buf);
}
