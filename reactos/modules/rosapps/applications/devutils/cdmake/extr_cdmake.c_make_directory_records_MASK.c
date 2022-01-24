#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_ctime; int /*<<< orphan*/  st_mode; } ;
struct dirent {scalar_t__* d_name; scalar_t__ d_type; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {TYPE_1__* next_in_path_table; } ;
struct TYPE_6__ {int level; int /*<<< orphan*/ * first_record; int /*<<< orphan*/  date_and_time; struct TYPE_6__* next_in_path_table; } ;
typedef  TYPE_1__* PDIR_RECORD ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 char* DIRECTORY_TIMESTAMP ; 
 scalar_t__ DIR_SEPARATOR_CHAR ; 
 scalar_t__* DIR_SEPARATOR_STRING ; 
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_REG ; 
 scalar_t__ MAX_LEVEL ; 
 int MAX_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VERBOSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compare_directory_order ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* end_source ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 TYPE_1__* FUNC7 (struct dirent*,struct stat*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__ root ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* source ; 
 int FUNC12 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__*) ; 
 scalar_t__ FUNC14 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__*) ; 
 scalar_t__* FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC17(PDIR_RECORD d)
{
    PDIR_RECORD new_d;
    DIR *dirp;
    struct dirent *entry;
    char *old_end_source;
    struct stat stbuf;
    char buf[MAX_PATH];

    d->first_record = NULL;

#ifdef HAVE_D_TYPE
    dirp = opendir(source);
    if (dirp != NULL)
    {
        while ((entry = readdir(dirp)) != NULL)
        {
            if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
                continue; // skip self and parent

            if (entry->d_type == DT_REG) // normal file
            {
                // Check for an absolute path
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

    dirp = opendir(source);
    if (dirp != NULL)
    {
        while ((entry = readdir(dirp)) != NULL)
        {
            if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
                continue; // skip self and parent

            if (entry->d_type == DT_DIR) // directory
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
                    // Check for an absolute path
                    if (source[0] == DIR_SEPARATOR_CHAR)
                    {
                        strcpy(buf, source);
                    }
                    else
                    {
                        if (!getcwd(buf, sizeof(buf)))
                            error_exit("Cannot get CWD: %s\n", strerror(errno));
                        strcat(buf, DIR_SEPARATOR_STRING);
                        strcat(buf, source);
                    }

                    if (stat(buf, &stbuf) == -1)
                    {
                        error_exit("Cannot access '%s' (%s)\n", buf, strerror(errno));
                        return;
                    }
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
        }
        closedir(dirp);
    }
    else
    {
        error_exit("Cannot open '%s'\n", source);
        return;
    }

#else

    dirp = FUNC8(source);
    if (dirp != NULL)
    {
        while ((entry = FUNC10(dirp)) != NULL)
        {
            if (FUNC14(entry->d_name, ".") == 0 || FUNC14(entry->d_name, "..") == 0)
                continue; // skip self and parent

            // Check for an absolute path
            if (source[0] == DIR_SEPARATOR_CHAR)
            {
                FUNC15(buf, source);
                FUNC13(buf, DIR_SEPARATOR_STRING);
                FUNC13(buf, entry->d_name);
            }
            else
            {
                if (!FUNC6(buf, sizeof(buf)))
                    FUNC5("Cannot get CWD: %s\n", FUNC16(errno));
                FUNC13(buf, DIR_SEPARATOR_STRING);
                FUNC13(buf, source);
                FUNC13(buf, entry->d_name);
            }

            if (FUNC12(buf, &stbuf) == -1)
            {
                FUNC5("Cannot access '%s' (%s)\n", buf, FUNC16(errno));
                return;
            }

            if (FUNC0(stbuf.st_mode))
            {
                old_end_source = end_source;
                FUNC2(entry->d_name);
                *end_source++ = DIR_SEPARATOR_CHAR;
                *end_source = 0;
                if (verbosity == VERBOSE)
                {
                    FUNC9("%d: directory %s\n", d->level + 1, source);
                }

                if (d->level < MAX_LEVEL)
                {
                    new_d = FUNC7(entry, &stbuf, d);
                    new_d->next_in_path_table = root.next_in_path_table;
                    root.next_in_path_table = new_d;
                    new_d->level = d->level + 1;
                    FUNC17(new_d);
                }
                else
                {
                    FUNC5("Directory is nested too deep");
                }

                end_source = old_end_source;
                *end_source = 0;
            }
            else if (FUNC1(stbuf.st_mode))
            {
                if (FUNC14(entry->d_name, DIRECTORY_TIMESTAMP) == 0)
                {
                    FUNC4(&d->date_and_time, &stbuf.st_ctime);
                }
                else
                {
                    if (verbosity == VERBOSE)
                    {
                        FUNC9("%d: file %s\n", d->level, buf);
                    }
                    (void) FUNC7(entry, &stbuf, d);
                }
            }
        }
        FUNC3(dirp);
    }
    else
    {
        FUNC5("Cannot open '%s'\n", source);
        return;
    }

#endif

    // sort directory
    d->first_record = FUNC11(d->first_record, 0, compare_directory_order);
}