
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int decoder_t ;


 int OpenCommon (int *,int) ;

__attribute__((used)) static int OpenDecoder( vlc_object_t *p_this )
{
    return OpenCommon( (decoder_t*) p_this, 0 );
}
