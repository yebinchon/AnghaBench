
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_4__ {struct TYPE_4__* p_next; int * psz_help; int * psz_longname; int * psz_shortname; int * psz_name; } ;
typedef TYPE_1__ libvlc_module_description_t ;
typedef int libvlc_instance_t ;


 int VLC_UNUSED (int *) ;
 int libvlc_module_description_list_release (TYPE_1__*) ;
 int libvlc_printerr (char*) ;
 scalar_t__ malloc (int) ;
 char* module_get_help (int *) ;
 char* module_get_name (int *,int) ;
 char* module_get_object (int *) ;
 int module_list_free (int **) ;
 int ** module_list_get (size_t*) ;
 int module_provides (int *,char const*) ;
 int * strdup (char const*) ;

__attribute__((used)) static libvlc_module_description_t *module_description_list_get(
                libvlc_instance_t *p_instance, const char *capability )
{
    libvlc_module_description_t *p_list = ((void*)0),
                          *p_actual = ((void*)0),
                          *p_previous = ((void*)0);
    size_t count;
    module_t **module_list = module_list_get( &count );

    for (size_t i = 0; i < count; i++)
    {
        module_t *p_module = module_list[i];

        if ( !module_provides( p_module, capability ) )
            continue;

        p_actual = ( libvlc_module_description_t * ) malloc( sizeof( libvlc_module_description_t ) );
        if ( p_actual == ((void*)0) )
        {
            libvlc_printerr( "Not enough memory" );
            libvlc_module_description_list_release( p_list );
            module_list_free( module_list );
            return ((void*)0);
        }

        if ( p_list == ((void*)0) )
            p_list = p_actual;

        const char* name = module_get_object( p_module );
        const char* shortname = module_get_name( p_module, 0 );
        const char* longname = module_get_name( p_module, 1 );
        const char* help = module_get_help( p_module );
        p_actual->psz_name = name ? strdup( name ) : ((void*)0);
        p_actual->psz_shortname = shortname ? strdup( shortname ) : ((void*)0);
        p_actual->psz_longname = longname ? strdup( longname ) : ((void*)0);
        p_actual->psz_help = help ? strdup( help ) : ((void*)0);

        p_actual->p_next = ((void*)0);
        if ( p_previous )
            p_previous->p_next = p_actual;
        p_previous = p_actual;
    }

    module_list_free( module_list );
    VLC_UNUSED( p_instance );
    return p_list;
}
