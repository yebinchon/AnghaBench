
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_keystore ;
struct TYPE_2__ {int * p_memory_keystore; } ;


 TYPE_1__* libvlc_priv (int ) ;
 int vlc_object_instance (int *) ;

__attribute__((used)) static vlc_keystore *
get_memory_keystore(vlc_object_t *p_obj)
{
    return libvlc_priv(vlc_object_instance(p_obj))->p_memory_keystore;
}
