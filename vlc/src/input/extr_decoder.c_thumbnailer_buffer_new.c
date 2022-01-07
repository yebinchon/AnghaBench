
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct decoder_owner {int lock; int b_first; } ;
typedef int picture_t ;
struct TYPE_5__ {int video; } ;
struct TYPE_6__ {TYPE_1__ fmt_out; } ;
typedef TYPE_2__ decoder_t ;


 struct decoder_owner* dec_get_owner (TYPE_2__*) ;
 int * picture_NewFromFormat (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static picture_t *thumbnailer_buffer_new( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );


    vlc_mutex_lock( &p_owner->lock );
    if( !p_owner->b_first )
    {
        vlc_mutex_unlock( &p_owner->lock );
        return ((void*)0);
    }
    vlc_mutex_unlock( &p_owner->lock );
    return picture_NewFromFormat( &p_dec->fmt_out.video );
}
