
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inf_file {unsigned int nb_sections; TYPE_1__** sections; } ;
typedef int WCHAR ;
struct TYPE_2__ {int name; } ;


 int strcmpiW (int const*,int ) ;

__attribute__((used)) static int find_section( const struct inf_file *file, const WCHAR *name )
{
    unsigned int i;

    for (i = 0; i < file->nb_sections; i++)
        if (!strcmpiW( name, file->sections[i]->name )) return i;
    return -1;
}
