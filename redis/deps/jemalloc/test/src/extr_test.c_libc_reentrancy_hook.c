
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_hook (int *,int *) ;
 int hooks_libc_hook ;
 int libc_hook_ran ;

__attribute__((used)) static void
libc_reentrancy_hook() {
 do_hook(&libc_hook_ran, &hooks_libc_hook);
}
