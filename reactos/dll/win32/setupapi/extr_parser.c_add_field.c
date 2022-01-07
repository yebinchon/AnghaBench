
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_file {scalar_t__ nb_fields; scalar_t__ alloc_fields; struct field* fields; } ;
struct field {int const* text; } ;
typedef int WCHAR ;


 struct field* grow_array (struct field*,scalar_t__*,int) ;

__attribute__((used)) static struct field *add_field( struct inf_file *file, const WCHAR *text )
{
    struct field *field;

    if (file->nb_fields >= file->alloc_fields)
    {
        if (!(file->fields = grow_array( file->fields, &file->alloc_fields,
                                         sizeof(file->fields[0]) ))) return ((void*)0);
    }
    field = &file->fields[file->nb_fields++];
    field->text = text;
    return field;
}
