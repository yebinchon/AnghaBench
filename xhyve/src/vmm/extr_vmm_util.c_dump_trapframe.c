
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;


 int DUMP_REG (int ) ;
 int DUMP_SEG (int ) ;
 int addr ;
 int cs ;
 int ds ;
 int err ;
 int es ;
 int flags ;
 int fs ;
 int gs ;
 int r10 ;
 int r11 ;
 int r12 ;
 int r13 ;
 int r14 ;
 int r15 ;
 int r8 ;
 int r9 ;
 int rax ;
 int rbp ;
 int rbx ;
 int rcx ;
 int rdi ;
 int rdx ;
 int rflags ;
 int rip ;
 int rsi ;
 int rsp ;
 int ss ;
 int trapno ;

void
dump_trapframe(struct trapframe *tf)
{
 DUMP_REG(rdi);
 DUMP_REG(rsi);
 DUMP_REG(rdx);
 DUMP_REG(rcx);
 DUMP_REG(r8);
 DUMP_REG(r9);
 DUMP_REG(rax);
 DUMP_REG(rbx);
 DUMP_REG(rbp);
 DUMP_REG(r10);
 DUMP_REG(r11);
 DUMP_REG(r12);
 DUMP_REG(r13);
 DUMP_REG(r14);
 DUMP_REG(r15);
 DUMP_REG(trapno);
 DUMP_REG(addr);
 DUMP_REG(flags);
 DUMP_REG(err);
 DUMP_REG(rip);
 DUMP_REG(rflags);
 DUMP_REG(rsp);
 DUMP_SEG(cs);
 DUMP_SEG(ss);
 DUMP_SEG(fs);
 DUMP_SEG(gs);
 DUMP_SEG(es);
 DUMP_SEG(ds);
}
