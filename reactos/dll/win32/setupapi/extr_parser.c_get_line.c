
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {unsigned int nb_lines; struct line* lines; } ;
struct line {int dummy; } ;
struct inf_file {unsigned int nb_sections; struct section** sections; } ;



__attribute__((used)) static inline struct line *get_line( struct inf_file *file, unsigned int section_index,
                                     unsigned int line_index )
{
    struct section *section;

    if (section_index >= file->nb_sections) return ((void*)0);
    section = file->sections[section_index];
    if (line_index >= section->nb_lines) return ((void*)0);
    return &section->lines[line_index];
}
