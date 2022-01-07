
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int module_t ;
struct TYPE_10__ {int * psz_file; TYPE_2__* p_item; } ;
typedef TYPE_1__ meta_export_t ;
struct TYPE_11__ {int i_type; int lock; } ;
typedef TYPE_2__ input_item_t ;
typedef enum input_item_type_e { ____Placeholder_input_item_type_e } input_item_type_e ;


 int ITEM_TYPE_FILE ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int free (char*) ;
 char* input_item_GetURI (TYPE_2__*) ;
 int * module_need (TYPE_1__*,char*,int *,int) ;
 int module_unneed (TYPE_1__*,int *) ;
 int msg_Err (TYPE_1__*,char*,char*) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_object_delete (TYPE_1__*) ;
 int * vlc_uri2path (char*) ;

int input_item_WriteMeta( vlc_object_t *obj, input_item_t *p_item )
{
    meta_export_t *p_export =
        vlc_custom_create( obj, sizeof( *p_export ), "meta writer" );
    if( p_export == ((void*)0) )
        return VLC_ENOMEM;
    p_export->p_item = p_item;

    enum input_item_type_e type;
    vlc_mutex_lock( &p_item->lock );
    type = p_item->i_type;
    vlc_mutex_unlock( &p_item->lock );
    if( type != ITEM_TYPE_FILE )
        goto error;

    char *psz_uri = input_item_GetURI( p_item );
    p_export->psz_file = vlc_uri2path( psz_uri );
    if( p_export->psz_file == ((void*)0) )
        msg_Err( p_export, "cannot write meta to remote media %s", psz_uri );
    free( psz_uri );
    if( p_export->psz_file == ((void*)0) )
        goto error;

    module_t *p_mod = module_need( p_export, "meta writer", ((void*)0), 0 );
    if( p_mod )
        module_unneed( p_export, p_mod );
    vlc_object_delete(p_export);
    return VLC_SUCCESS;

error:
    vlc_object_delete(p_export);
    return VLC_EGENERIC;
}
