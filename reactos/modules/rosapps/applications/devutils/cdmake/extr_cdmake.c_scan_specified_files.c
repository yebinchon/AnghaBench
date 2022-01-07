
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct target_file {char* target_name; char* source_name; struct target_file* next; } ;
struct target_dir_entry {char* case_name; struct target_dir_entry* next; struct target_dir_entry* child; struct target_file* head; } ;
struct stat {int st_size; int st_mtime; int st_ctime; } ;
struct TYPE_9__ {int QuadPart; } ;
struct TYPE_8__ {int level; char* orig_name; int * first_record; int joliet_size; int size; int date_and_time; } ;
typedef TYPE_1__* PDIR_RECORD ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int HANDLE ;


 int CloseHandle (int ) ;
 int CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int DIRECTORY_TIMESTAMP ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSizeEx (int ,TYPE_2__*) ;
 int INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int TRUE ;
 scalar_t__ VERBOSE ;
 int compare_directory_order ;
 int convert_date_and_time (int *,int *) ;
 scalar_t__* end_source ;
 int error_exit (char*,char*,...) ;
 int get_cd_file_time (int ,int *) ;
 TYPE_1__* new_empty_dirrecord (TYPE_1__*,int ) ;
 int parse_filename_into_dirrecord (char*,TYPE_1__*,int ) ;
 int printf (char*,int,char*,...) ;
 int * sort_linked_list (int *,int ,int ) ;
 scalar_t__* source ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
scan_specified_files(PDIR_RECORD d, struct target_dir_entry *dir)
{
    PDIR_RECORD new_d;




    struct stat stbuf;

    struct target_file *file;
    struct target_dir_entry *child;

    d->first_record = ((void*)0);

    for (file = dir->head; file; file = file->next)
    {
        if (strcmp(file->target_name, DIRECTORY_TIMESTAMP) == 0)
        {
            if (stat(file->target_name, &stbuf) == -1)
            {
                error_exit("Cannot stat timestamp file '%s'\n", file->source_name);
            }
            convert_date_and_time(&d->date_and_time, &stbuf.st_ctime);

        }
        else
        {
            if (verbosity == VERBOSE)
            {
                printf("%d: file %s (from %s)\n",
                       d->level,
                       file->target_name,
                       file->source_name);
            }
            new_d = new_empty_dirrecord(d, FALSE);
            parse_filename_into_dirrecord(file->target_name, new_d, FALSE);
            if (stat(file->source_name, &stbuf) == -1)
            {
                error_exit("Cannot find '%s' (target '%s')\n",
                           file->source_name,
                           file->target_name);
            }
            convert_date_and_time(&new_d->date_and_time, &stbuf.st_mtime);
            new_d->size = new_d->joliet_size = stbuf.st_size;
            new_d->orig_name = file->source_name;

        }
    }

    for (child = dir->child; child; child = child->next)
    {
        if (verbosity == VERBOSE)
        {
            printf("%d: directory %s\n", d->level, child->case_name);
        }
        new_d = new_empty_dirrecord(d, TRUE);
        parse_filename_into_dirrecord(child->case_name, new_d, TRUE);
        scan_specified_files(new_d, child);
    }


    d->first_record = sort_linked_list(d->first_record,
                                       0,
                                       compare_directory_order);
    source[0] = 0;
    end_source = source;
}
