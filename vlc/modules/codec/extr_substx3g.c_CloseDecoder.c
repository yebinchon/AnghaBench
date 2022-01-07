
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int text_style_t ;
struct TYPE_2__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ decoder_t ;


 int text_style_Delete (int *) ;

__attribute__((used)) static void CloseDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *) p_this;
    text_style_Delete( (text_style_t *) p_dec->p_sys );
}
