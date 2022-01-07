
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int module_t ;
typedef int libvlc_instance_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; struct TYPE_6__* psz_description; struct TYPE_6__* psz_name; } ;
typedef TYPE_1__ libvlc_audio_output_t ;


 int VLC_UNUSED (int *) ;
 int free (TYPE_1__*) ;
 int libvlc_audio_output_list_release (TYPE_1__*) ;
 int libvlc_printerr (char*) ;
 TYPE_1__* malloc (int) ;
 int module_get_name (int *,int) ;
 int module_get_object (int *) ;
 int module_list_free (int **) ;
 int ** module_list_get (size_t*) ;
 int module_provides (int *,char*) ;
 void* strdup (int ) ;
 scalar_t__ unlikely (int) ;

libvlc_audio_output_t *
        libvlc_audio_output_list_get( libvlc_instance_t *p_instance )
{
    size_t count;
    module_t **module_list = module_list_get( &count );
    libvlc_audio_output_t *list = ((void*)0);

    for (size_t i = 0; i < count; i++)
    {
        module_t *module = module_list[i];

        if( !module_provides( module, "audio output" ) )
            continue;

        libvlc_audio_output_t *item = malloc( sizeof( *item ) );
        if( unlikely(item == ((void*)0)) )
        {
    error:
            libvlc_printerr( "Not enough memory" );
            libvlc_audio_output_list_release( list );
            list = ((void*)0);
            break;
        }

        item->psz_name = strdup( module_get_object( module ) );
        item->psz_description = strdup( module_get_name( module, 1 ) );
        if( unlikely(item->psz_name == ((void*)0) || item->psz_description == ((void*)0)) )
        {
            free( item->psz_name );
            free( item->psz_description );
            free( item );
            goto error;
        }
        item->p_next = list;
        list = item;
    }
    module_list_free( module_list );

    VLC_UNUSED( p_instance );
    return list;
}
