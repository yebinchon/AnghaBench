
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_meta_t ;
typedef int uint8_t ;
typedef int uint32_t ;


 int ID3HandleTag (int const*,size_t,int ,int *,int *) ;
 int VLC_SUCCESS ;

__attribute__((used)) static int ID3TAG_Parse_Handler( uint32_t i_tag, const uint8_t *p_payload,
                                 size_t i_payload, void *p_priv )
{
    vlc_meta_t *p_meta = (vlc_meta_t *) p_priv;

    (void) ID3HandleTag( p_payload, i_payload, i_tag, p_meta, ((void*)0) );

    return VLC_SUCCESS;
}
