
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_addr; } ;
typedef TYPE_1__ siginfo_t ;


 int panic (char*,long) ;

void
arc_buf_sigsegv(int sig, siginfo_t *si, void *unused)
{
 panic("Got SIGSEGV at address: 0x%lx\n", (long)si->si_addr);
}
