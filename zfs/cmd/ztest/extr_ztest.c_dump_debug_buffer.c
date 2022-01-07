
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int zo_dump_dbgmsg; } ;


 int STDOUT_FILENO ;
 int write (int ,char*,int) ;
 int zfs_dbgmsg_print (char*) ;
 TYPE_1__ ztest_opts ;

__attribute__((used)) static void
dump_debug_buffer(void)
{
 ssize_t ret __attribute__((unused));

 if (!ztest_opts.zo_dump_dbgmsg)
  return;





 ret = write(STDOUT_FILENO, "\n", 1);
 zfs_dbgmsg_print("ztest");
}
