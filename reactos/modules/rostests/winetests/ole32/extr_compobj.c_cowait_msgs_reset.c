
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cowait_msgs_first ;
 scalar_t__ cowait_msgs_last ;

__attribute__((used)) static void cowait_msgs_reset(void)
{
    cowait_msgs_first = cowait_msgs_last = 0;
}
