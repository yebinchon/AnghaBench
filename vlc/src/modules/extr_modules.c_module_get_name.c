
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* psz_longname; char const* psz_shortname; } ;
typedef TYPE_1__ module_t ;


 char const* module_get_object (TYPE_1__ const*) ;

const char *module_get_name( const module_t *m, bool long_name )
{
    if( long_name && ( m->psz_longname != ((void*)0)) )
        return m->psz_longname;

    if (m->psz_shortname != ((void*)0))
        return m->psz_shortname;
    return module_get_object (m);
}
