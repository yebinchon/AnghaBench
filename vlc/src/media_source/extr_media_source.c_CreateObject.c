
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const vlc_object_t ;


 int VLC_UNUSED (char const*) ;
 void* malloc (size_t) ;
 void* vlc_custom_create (char const*,size_t,char const*) ;

__attribute__((used)) static void *
CreateObject(vlc_object_t *parent, size_t length, const char *typename)
{





    return vlc_custom_create(parent, length, typename);

}
