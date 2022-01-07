
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_refcount; int i_cc; int prevpktbytes; int type; int i_flags; scalar_t__ i_dup; } ;
typedef TYPE_1__ ts_pid_t ;


 int FLAG_SCRAMBLED ;
 int PREVPKTKEEPBYTES ;
 int TYPE_FREE ;
 int assert (int) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void PIDReset( ts_pid_t *pid )
{
    assert(pid->i_refcount == 0);
    pid->i_cc = 0xff;
    pid->i_dup = 0;
    pid->i_flags &= ~FLAG_SCRAMBLED;
    pid->type = TYPE_FREE;
    memset(pid->prevpktbytes, 0, PREVPKTKEEPBYTES);
}
