
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wm_nextdlgctl; scalar_t__ wm_getdefid; scalar_t__ wm_close; scalar_t__ wm_command; } ;


 TYPE_1__ dm_messages ;

__attribute__((used)) static void zero_dm_messages(void)
{
    dm_messages.wm_command = 0;
    dm_messages.wm_close = 0;
    dm_messages.wm_getdefid = 0;
    dm_messages.wm_nextdlgctl = 0;
}
