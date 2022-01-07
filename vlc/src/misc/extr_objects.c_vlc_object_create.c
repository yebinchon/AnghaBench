
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 void* vlc_custom_create (int *,size_t,char*) ;

void *(vlc_object_create)(vlc_object_t *p_this, size_t i_size)
{
    return vlc_custom_create( p_this, i_size, "generic" );
}
