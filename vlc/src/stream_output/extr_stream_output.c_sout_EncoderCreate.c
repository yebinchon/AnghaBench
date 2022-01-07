
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int encoder_t ;


 int * vlc_custom_create (int *,int,char*) ;

encoder_t *sout_EncoderCreate( vlc_object_t *p_this )
{
    return vlc_custom_create( p_this, sizeof( encoder_t ), "encoder" );
}
