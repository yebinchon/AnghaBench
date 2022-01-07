
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int use_odd; } ;
typedef TYPE_1__ csa_t ;


 int VLC_ENOOBJ ;
 int VLC_SUCCESS ;
 int msg_Dbg (int *,char*,char*) ;

int csa_UseKey( vlc_object_t *p_caller, csa_t *c, bool use_odd )
{
    if ( !c ) return VLC_ENOOBJ;
    c->use_odd = use_odd;

        msg_Dbg( p_caller, "using the %s key for scrambling",
                 use_odd ? "odd" : "even" );

    return VLC_SUCCESS;
}
