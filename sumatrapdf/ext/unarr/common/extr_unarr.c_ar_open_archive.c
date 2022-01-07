
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* off64_t ;
typedef int ar_stream ;
typedef int ar_parse_entry_fn ;
typedef int ar_get_global_comment_fn ;
typedef int ar_entry_uncompress_fn ;
typedef int ar_entry_get_name_fn ;
typedef int ar_archive_close_fn ;
struct TYPE_5__ {void* entry_offset_next; void* entry_offset_first; int * stream; int get_comment; int uncompress; int get_name; int parse_entry; int close; } ;
typedef TYPE_1__ ar_archive ;


 TYPE_1__* malloc (size_t) ;
 int memset (TYPE_1__*,int ,size_t) ;

ar_archive *ar_open_archive(ar_stream *stream, size_t struct_size, ar_archive_close_fn close, ar_parse_entry_fn parse_entry,
                            ar_entry_get_name_fn get_name, ar_entry_uncompress_fn uncompress, ar_get_global_comment_fn get_comment,
                            off64_t first_entry_offset)
{
    ar_archive *ar = malloc(struct_size);
    if (!ar)
        return ((void*)0);
    memset(ar, 0, struct_size);
    ar->close = close;
    ar->parse_entry = parse_entry;
    ar->get_name = get_name;
    ar->uncompress = uncompress;
    ar->get_comment = get_comment;
    ar->stream = stream;
    ar->entry_offset_first = first_entry_offset;
    ar->entry_offset_next = first_entry_offset;
    return ar;
}
