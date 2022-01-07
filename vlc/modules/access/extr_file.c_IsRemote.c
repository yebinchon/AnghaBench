
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int f_flag; } ;
struct statfs {scalar_t__ f_type; } ;




 int MNT_LOCAL ;



 scalar_t__ fstatfs (int,struct statfs*) ;
 scalar_t__ fstatvfs (int,struct statvfs*) ;

__attribute__((used)) static bool IsRemote (int fd)
{
    (void)fd;
    return 0;


}
