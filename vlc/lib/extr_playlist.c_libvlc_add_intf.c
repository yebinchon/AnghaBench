
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 scalar_t__ libvlc_InternalAddIntf (int ,char const*) ;
 int libvlc_printerr (char*,...) ;

int libvlc_add_intf( libvlc_instance_t *p_instance, const char *name )
{
    if( libvlc_InternalAddIntf( p_instance->p_libvlc_int, name ))
    {
        if( name != ((void*)0) )
            libvlc_printerr("interface \"%s\" initialization failed", name );
        else
            libvlc_printerr("default interface initialization failed");
        return -1;
    }
    return 0;
}
