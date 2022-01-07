
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DN_OLD_MAX_BONUSLEN ;

int
dmu_bonus_max(void)
{
 return (DN_OLD_MAX_BONUSLEN);
}
