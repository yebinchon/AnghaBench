
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef int FILE ;


 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int SUCCESS ;
 int errno ;
 int error (char*,...) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int io_fprintf (int *,char*,char*) ;
 int open (char const*,int,int) ;
 int save_option_colors (int *) ;
 int save_option_keybindings (int *) ;
 int save_option_settings (int *) ;
 int strerror (int ) ;

enum status_code
save_options(const char *path)
{
 int fd = open(path, O_WRONLY | O_CREAT | O_EXCL, 0666);
 FILE *file = fd != -1 ? fdopen(fd, "w") : ((void*)0);
 enum status_code code = SUCCESS;

 if (!file)
  return error("%s", strerror(errno));

 if (!io_fprintf(file, "%s", "# Saved by Tig\n")
     || !save_option_settings(file)
     || !save_option_keybindings(file)
     || !save_option_colors(file))
  code = error("Write returned an error");

 fclose(file);
 return code;
}
