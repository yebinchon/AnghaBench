
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;


 int decoder_Clean (int *) ;
 int vlc_object_delete (int *) ;

void decoder_Destroy( decoder_t *p_dec )
{
    if (p_dec != ((void*)0))
    {
        decoder_Clean( p_dec );
        vlc_object_delete(p_dec);
    }
}
