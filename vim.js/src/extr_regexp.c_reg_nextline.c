
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fast_breakcheck () ;
 int reg_getline (int ) ;
 int reginput ;
 int regline ;
 int reglnum ;

__attribute__((used)) static void
reg_nextline()
{
    regline = reg_getline(++reglnum);
    reginput = regline;
    fast_breakcheck();
}
