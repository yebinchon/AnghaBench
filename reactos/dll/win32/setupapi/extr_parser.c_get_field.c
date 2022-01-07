
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int key_field; int nb_fields; int first_field; } ;
struct inf_file {struct field* fields; } ;
struct field {int dummy; } ;


 struct line* get_line (struct inf_file*,int,int) ;

__attribute__((used)) static struct field *get_field( struct inf_file *file, int section_index, int line_index,
                                int field_index )
{
    struct line *line = get_line( file, section_index, line_index );

    if (!line) return ((void*)0);
    if (!field_index)
    {
        if (line->key_field == -1) return ((void*)0);
        return &file->fields[line->key_field];
    }
    field_index--;
    if (field_index >= line->nb_fields) return ((void*)0);
    return &file->fields[line->first_field + field_index];
}
