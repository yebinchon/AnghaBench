
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int i_command_level; } ;
typedef TYPE_2__ access_sys_t ;


 int mms_CommandSend (TYPE_1__*,int,int ,int,int *,int ) ;

__attribute__((used)) static int MMSStop( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;


    mms_CommandSend( p_access,
                     0x09,
                     p_sys->i_command_level,
                     0x001fffff,
                     ((void*)0), 0 );
    return( 0 );
}
