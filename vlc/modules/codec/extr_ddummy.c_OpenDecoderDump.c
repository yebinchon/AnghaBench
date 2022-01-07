
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int OpenDecoderCommon (int *,int) ;

__attribute__((used)) static int OpenDecoderDump( vlc_object_t *p_this )
{
    return OpenDecoderCommon( p_this, 1 );
}
