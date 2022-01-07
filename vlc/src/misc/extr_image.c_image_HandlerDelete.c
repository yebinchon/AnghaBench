
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int outfifo; scalar_t__ p_converter; scalar_t__ p_enc; int p_dec; } ;
typedef TYPE_1__ image_handler_t ;


 int DeleteConverter (scalar_t__) ;
 int DeleteEncoder (scalar_t__) ;
 int decoder_Destroy (int ) ;
 int free (TYPE_1__*) ;
 int picture_fifo_Delete (int ) ;

void image_HandlerDelete( image_handler_t *p_image )
{
    if( !p_image ) return;

    decoder_Destroy( p_image->p_dec );
    if( p_image->p_enc ) DeleteEncoder( p_image->p_enc );
    if( p_image->p_converter ) DeleteConverter( p_image->p_converter );

    picture_fifo_Delete( p_image->outfifo );

    free( p_image );
    p_image = ((void*)0);
}
