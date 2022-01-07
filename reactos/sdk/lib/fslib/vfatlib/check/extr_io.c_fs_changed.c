
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int changes ;
 scalar_t__ did_change ;

int fs_changed(void)
{
    return ! !changes || did_change;
}
