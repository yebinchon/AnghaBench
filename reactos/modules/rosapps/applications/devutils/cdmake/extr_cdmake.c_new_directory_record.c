
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_size; int st_mtime; int st_mode; } ;
struct dirent {char* d_name; scalar_t__ d_type; } ;
struct TYPE_8__ {TYPE_1__* next_in_memory; } ;
struct TYPE_7__ {struct TYPE_7__* first_record; struct TYPE_7__* next_in_directory; int joliet_size; int size; int flags; int date_and_time; struct TYPE_7__* parent; struct TYPE_7__* next_in_memory; } ;
typedef TYPE_1__* PDIR_RECORD ;


 scalar_t__ DT_DIR ;
 int HIDDEN_FLAG ;
 int S_ISDIR (int ) ;
 TYPE_1__* calloc (int,int) ;
 int convert_date_and_time (int *,int *) ;
 int error_exit (char*) ;
 int parse_filename_into_dirrecord (char*,TYPE_1__*,int) ;
 TYPE_2__ root ;

PDIR_RECORD
new_directory_record(struct dirent *entry,
                     struct stat *stbuf,
                     PDIR_RECORD parent)
{
    PDIR_RECORD d;

    d = calloc(1, sizeof(*d));
    if (d == ((void*)0))
        error_exit("Insufficient memory");
    d->next_in_memory = root.next_in_memory;
    root.next_in_memory = d;



    d->parent = parent;



    parse_filename_into_dirrecord(entry->d_name, d, S_ISDIR(stbuf->st_mode));


    convert_date_and_time(&d->date_and_time, &stbuf->st_mtime);
    d->flags |= entry->d_name[0] == '.' ? HIDDEN_FLAG : 0;
    d->size = d->joliet_size = stbuf->st_size;
    d->next_in_directory = parent->first_record;
    parent->first_record = d;
    return d;
}
