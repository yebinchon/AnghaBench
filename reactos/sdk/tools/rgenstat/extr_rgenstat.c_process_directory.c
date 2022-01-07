
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct dirent {char* d_name; scalar_t__ d_type; } ;
typedef int buf ;
struct TYPE_2__ {char* name; } ;
typedef int DIR ;


 char DIR_SEPARATOR_CHAR ;
 char* DIR_SEPARATOR_STRING ;
 scalar_t__ DT_REG ;
 int MAX_PATH ;
 scalar_t__ S_ISDIR (int ) ;
 int closedir (int *) ;
 int errno ;
 int exit (int) ;
 TYPE_1__ f ;
 int getcwd (char*,int) ;
 int is_valid_file (char*) ;
 int * opendir (char*) ;
 int parse_file (char*,char*,char*) ;
 int printf (char*,char*,...) ;
 struct dirent* readdir (int *) ;
 int stat (char*,struct stat*) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static void
process_directory (char *path, char *cvspath)
{
  DIR *dirp;
  struct dirent *entry;
  struct stat stbuf;
  char buf[MAX_PATH];
  char newcvspath[MAX_PATH];
  dirp = opendir(path);
  if (dirp != ((void*)0))
    {
      while ((entry = readdir(dirp)) != ((void*)0))
       {
          if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
            continue;


          if (path[0] == DIR_SEPARATOR_CHAR)
            {
              strcpy(buf, path);
              strcat(buf, DIR_SEPARATOR_STRING);
              strcat(buf, entry->d_name);
            }
          else
            {
              if (!getcwd(buf, sizeof(buf)))
                {
                  printf("Can't get CWD: %s\n", strerror(errno));
                  return;
                }
              strcat(buf, DIR_SEPARATOR_STRING);
              strcat(buf, path);
              strcat(buf, entry->d_name);
            }

          if (stat(buf, &stbuf) == -1)
            {
              printf("Can't access '%s' (%s)\n", buf, strerror(errno));
              return;
            }

          if (S_ISDIR(stbuf.st_mode))
           {
              strcpy(newcvspath, cvspath);
              strcat(newcvspath, entry->d_name);
              strcat(newcvspath, "/");

              process_directory(buf, newcvspath);
              continue;
           }


          if (!is_valid_file(buf))
            {
              continue;
            }

          parse_file(buf, cvspath, entry->d_name);
        }
      closedir(dirp);
    }
  else
    {
      printf("Can't open %s\n", path);
      exit(1);
    }


}
