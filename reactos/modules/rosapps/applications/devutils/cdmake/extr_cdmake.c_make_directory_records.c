
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_ctime; int st_mode; } ;
struct dirent {scalar_t__* d_name; scalar_t__ d_type; } ;
typedef int buf ;
struct TYPE_7__ {TYPE_1__* next_in_path_table; } ;
struct TYPE_6__ {int level; int * first_record; int date_and_time; struct TYPE_6__* next_in_path_table; } ;
typedef TYPE_1__* PDIR_RECORD ;
typedef int DIR ;


 char* DIRECTORY_TIMESTAMP ;
 scalar_t__ DIR_SEPARATOR_CHAR ;
 scalar_t__* DIR_SEPARATOR_STRING ;
 scalar_t__ DT_DIR ;
 scalar_t__ DT_REG ;
 scalar_t__ MAX_LEVEL ;
 int MAX_PATH ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ VERBOSE ;
 int append_string_to_source (scalar_t__*) ;
 int closedir (int *) ;
 int compare_directory_order ;
 int convert_date_and_time (int *,int *) ;
 char* end_source ;
 int errno ;
 int error_exit (char*,...) ;
 int getcwd (char*,int) ;
 TYPE_1__* new_directory_record (struct dirent*,struct stat*,TYPE_1__*) ;
 int * opendir (scalar_t__*) ;
 int printf (char*,int,...) ;
 struct dirent* readdir (int *) ;
 TYPE_2__ root ;
 int * sort_linked_list (int *,int ,int ) ;
 scalar_t__* source ;
 int stat (char*,struct stat*) ;
 int strcat (char*,scalar_t__*) ;
 scalar_t__ strcmp (scalar_t__*,char*) ;
 int strcpy (char*,scalar_t__*) ;
 scalar_t__* strerror (int ) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
make_directory_records(PDIR_RECORD d)
{
    PDIR_RECORD new_d;
    DIR *dirp;
    struct dirent *entry;
    char *old_end_source;
    struct stat stbuf;
    char buf[MAX_PATH];

    d->first_record = ((void*)0);
    dirp = opendir(source);
    if (dirp != ((void*)0))
    {
        while ((entry = readdir(dirp)) != ((void*)0))
        {
            if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
                continue;


            if (source[0] == DIR_SEPARATOR_CHAR)
            {
                strcpy(buf, source);
                strcat(buf, DIR_SEPARATOR_STRING);
                strcat(buf, entry->d_name);
            }
            else
            {
                if (!getcwd(buf, sizeof(buf)))
                    error_exit("Cannot get CWD: %s\n", strerror(errno));
                strcat(buf, DIR_SEPARATOR_STRING);
                strcat(buf, source);
                strcat(buf, entry->d_name);
            }

            if (stat(buf, &stbuf) == -1)
            {
                error_exit("Cannot access '%s' (%s)\n", buf, strerror(errno));
                return;
            }

            if (S_ISDIR(stbuf.st_mode))
            {
                old_end_source = end_source;
                append_string_to_source(entry->d_name);
                *end_source++ = DIR_SEPARATOR_CHAR;
                *end_source = 0;
                if (verbosity == VERBOSE)
                {
                    printf("%d: directory %s\n", d->level + 1, source);
                }

                if (d->level < MAX_LEVEL)
                {
                    new_d = new_directory_record(entry, &stbuf, d);
                    new_d->next_in_path_table = root.next_in_path_table;
                    root.next_in_path_table = new_d;
                    new_d->level = d->level + 1;
                    make_directory_records(new_d);
                }
                else
                {
                    error_exit("Directory is nested too deep");
                }

                end_source = old_end_source;
                *end_source = 0;
            }
            else if (S_ISREG(stbuf.st_mode))
            {
                if (strcmp(entry->d_name, DIRECTORY_TIMESTAMP) == 0)
                {
                    convert_date_and_time(&d->date_and_time, &stbuf.st_ctime);
                }
                else
                {
                    if (verbosity == VERBOSE)
                    {
                        printf("%d: file %s\n", d->level, buf);
                    }
                    (void) new_directory_record(entry, &stbuf, d);
                }
            }
        }
        closedir(dirp);
    }
    else
    {
        error_exit("Cannot open '%s'\n", source);
        return;
    }




    d->first_record = sort_linked_list(d->first_record, 0, compare_directory_order);
}
