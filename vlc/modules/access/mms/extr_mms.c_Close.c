
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {scalar_t__ i_proto; } ;
typedef TYPE_2__ access_sys_t ;


 int MMSHClose (TYPE_1__*) ;
 int MMSTUClose (TYPE_1__*) ;
 scalar_t__ MMS_PROTO_HTTP ;
 scalar_t__ MMS_PROTO_TCP ;
 scalar_t__ MMS_PROTO_UDP ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    stream_t *p_access = (stream_t*)p_this;
    access_sys_t *p_sys = p_access->p_sys;

    if( ( p_sys->i_proto == MMS_PROTO_TCP ) ||
        ( p_sys->i_proto == MMS_PROTO_UDP ) )
    {
         MMSTUClose ( p_access );
    }
    else if( p_sys->i_proto == MMS_PROTO_HTTP )
    {
         MMSHClose ( p_access );
    }
}
