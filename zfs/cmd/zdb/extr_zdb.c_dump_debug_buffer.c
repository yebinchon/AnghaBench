
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* dump_opt ;
 int fflush (int ) ;
 int printf (char*) ;
 int stdout ;
 int zfs_dbgmsg_print (char*) ;

__attribute__((used)) static void
dump_debug_buffer(void)
{
 if (dump_opt['G']) {
  (void) printf("\n");
  (void) fflush(stdout);
  zfs_dbgmsg_print("zdb");
 }
}
