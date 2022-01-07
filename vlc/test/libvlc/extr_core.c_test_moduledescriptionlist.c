
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_next; int * psz_help; int * psz_longname; int * psz_shortname; int * psz_name; } ;
typedef TYPE_1__ libvlc_module_description_t ;


 int assert (int) ;
 int libvlc_module_description_list_release (TYPE_1__*) ;
 int strlen (int *) ;

__attribute__((used)) static void test_moduledescriptionlist (libvlc_module_description_t *list)
{
    libvlc_module_description_t *module = list;
    while ( module ) {
        assert (strlen (module->psz_name) );
        assert (strlen (module->psz_shortname) );
        assert (module->psz_longname == ((void*)0) || strlen (module->psz_longname));
        assert (module->psz_help == ((void*)0) || strlen (module->psz_help));
        module = module->p_next;
    }

    libvlc_module_description_list_release (list);
}
