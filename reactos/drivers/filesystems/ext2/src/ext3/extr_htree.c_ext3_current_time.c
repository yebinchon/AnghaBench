
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __u32 ;
typedef int LARGE_INTEGER ;


 int Ext2LinuxTime (int ) ;
 int KeQuerySystemTime (int *) ;

__u32 ext3_current_time(struct inode *in)
{
    LARGE_INTEGER SysTime;
    KeQuerySystemTime(&SysTime);

    return Ext2LinuxTime(SysTime);
}
