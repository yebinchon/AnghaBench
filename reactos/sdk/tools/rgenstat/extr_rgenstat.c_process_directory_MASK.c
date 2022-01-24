#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; scalar_t__ d_type; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 char DIR_SEPARATOR_CHAR ; 
 char* DIR_SEPARATOR_STRING ; 
 scalar_t__ DT_REG ; 
 int MAX_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ f ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (char *path, char *cvspath)
{
  DIR *dirp;
  struct dirent *entry;
  struct stat stbuf;
  char buf[MAX_PATH];
  char newcvspath[MAX_PATH];

#ifdef HAVE_D_TYPE
  dirp = opendir(path);
  if (dirp != NULL)
    {
      while ((entry = readdir(dirp)) != NULL)
        {
          if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
            continue; // skip self and parent

      	  if (entry->d_type == DT_REG) // normal file
      	    {
              // Check for an absolute path
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
                  strcat(newcvspath, f.name);
                  strcat(newcvspath, "/");

                  process_directory(buf, newcvspath);
                  continue;
          	    }

              /* Must be a .c file */
              if (!is_valid_file(buf))
                {
                  continue;
                }

              parse_file(buf, cvspath, entry->d_name);
           }
      }
      closedir(dirp);
    }
  else
    {
      printf("Can't open %s\n", path);
      exit(1);
    }

#else

  dirp = FUNC5(path);
  if (dirp != NULL)
    {
      while ((entry = FUNC8(dirp)) != NULL)
      	{
          if (FUNC11(entry->d_name, ".") == 0 || FUNC11(entry->d_name, "..") == 0)
            continue; // skip self and parent

          // Check for an absolute path
          if (path[0] == DIR_SEPARATOR_CHAR)
            {
              FUNC12(buf, path);
              FUNC10(buf, DIR_SEPARATOR_STRING);
              FUNC10(buf, entry->d_name);
            }
          else
            {
              if (!FUNC3(buf, sizeof(buf)))
                {
                  FUNC7("Can't get CWD: %s\n", FUNC13(errno));
                  return;
                }
              FUNC10(buf, DIR_SEPARATOR_STRING);
              FUNC10(buf, path);
              FUNC10(buf, entry->d_name);
            }

          if (FUNC9(buf, &stbuf) == -1)
            {
              FUNC7("Can't access '%s' (%s)\n", buf, FUNC13(errno));
              return;
            }

          if (FUNC0(stbuf.st_mode))
      	    {
              FUNC12(newcvspath, cvspath);
              FUNC10(newcvspath, entry->d_name);
              FUNC10(newcvspath, "/");

              FUNC14(buf, newcvspath);
              continue;
      	    }

          /* Must be a .c file */
          if (!FUNC4(buf))
            {
              continue;
            }

          FUNC6(buf, cvspath, entry->d_name);
        }
      FUNC1(dirp);
    }
  else
    {
      FUNC7("Can't open %s\n", path);
      FUNC2(1);
    }

#endif
}