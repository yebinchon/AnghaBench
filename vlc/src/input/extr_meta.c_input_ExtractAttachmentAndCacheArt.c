
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int input_thread_t ;
typedef int input_item_t ;
struct TYPE_5__ {int i_data; int p_data; int psz_mime; } ;
typedef TYPE_1__ input_attachment_t ;
struct TYPE_6__ {int * p_item; } ;


 int VLC_OBJECT (int *) ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ input_FindArtInCache (int *) ;
 TYPE_1__* input_GetAttachment (int *,char const*) ;
 int input_SaveArt (int ,int *,int ,int ,char const*) ;
 scalar_t__ input_item_IsArtFetched (int *) ;
 TYPE_3__* input_priv (int *) ;
 scalar_t__ likely (int) ;
 int msg_Warn (int *,char*,...) ;
 int strcmp (int ,char*) ;
 int vlc_input_attachment_Delete (TYPE_1__*) ;

void input_ExtractAttachmentAndCacheArt( input_thread_t *p_input,
                                         const char *name )
{
    input_item_t *p_item = input_priv(p_input)->p_item;

    if( input_item_IsArtFetched( p_item ) )
    {

        msg_Warn( p_input, "art already fetched" );
        if( likely(input_FindArtInCache( p_item ) == VLC_SUCCESS) )
            return;
    }


    input_attachment_t *p_attachment = input_GetAttachment( p_input, name );
    if( !p_attachment )
    {
        msg_Warn( p_input, "art attachment %s not found", name );
        return;
    }


    const char *psz_type = ((void*)0);

    if( !strcmp( p_attachment->psz_mime, "image/jpeg" ) )
        psz_type = ".jpg";
    else if( !strcmp( p_attachment->psz_mime, "image/png" ) )
        psz_type = ".png";
    else if( !strcmp( p_attachment->psz_mime, "image/x-pict" ) )
        psz_type = ".pct";

    input_SaveArt( VLC_OBJECT(p_input), p_item,
                   p_attachment->p_data, p_attachment->i_data, psz_type );
    vlc_input_attachment_Delete( p_attachment );
}
