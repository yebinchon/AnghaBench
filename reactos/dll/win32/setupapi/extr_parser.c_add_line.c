
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int nb_lines; int alloc_lines; struct line* lines; } ;
struct line {int key_field; scalar_t__ nb_fields; int first_field; } ;
struct inf_file {int nb_sections; int nb_fields; struct section** sections; } ;


 int ASSERT (int) ;
 int GetProcessHeap () ;
 struct section* HeapReAlloc (int ,int ,struct section*,int) ;

__attribute__((used)) static struct line *add_line( struct inf_file *file, int section_index )
{
    struct section *section;
    struct line *line;

    ASSERT( section_index >= 0 && section_index < file->nb_sections );

    section = file->sections[section_index];
    if (section->nb_lines == section->alloc_lines)
    {
        int size = sizeof(*section) - sizeof(section->lines) + 2*section->alloc_lines*sizeof(*line);
        if (!(section = HeapReAlloc( GetProcessHeap(), 0, section, size ))) return ((void*)0);
        section->alloc_lines *= 2;
        file->sections[section_index] = section;
    }
    line = &section->lines[section->nb_lines++];
    line->first_field = file->nb_fields;
    line->nb_fields = 0;
    line->key_field = -1;
    return line;
}
