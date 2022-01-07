
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct section {unsigned int nb_lines; struct line* lines; } ;
struct line {int key_field; } ;
struct inf_file {int nb_sections; TYPE_1__* fields; struct section** sections; } ;
typedef int WCHAR ;
struct TYPE_2__ {int text; } ;


 int strcmpiW (int const*,int ) ;

__attribute__((used)) static struct line *find_line( struct inf_file *file, int section_index, const WCHAR *name )
{
    struct section *section;
    struct line *line;
    unsigned int i;

    if (section_index < 0 || section_index >= file->nb_sections) return ((void*)0);
    section = file->sections[section_index];
    for (i = 0, line = section->lines; i < section->nb_lines; i++, line++)
    {
        if (line->key_field == -1) continue;
        if (!strcmpiW( name, file->fields[line->key_field].text )) return line;
    }
    return ((void*)0);
}
