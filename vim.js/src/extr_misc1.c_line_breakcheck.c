
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BREAKCHECK_SKIP ;
 scalar_t__ breakcheck_count ;
 int ui_breakcheck () ;

void
line_breakcheck()
{
    if (++breakcheck_count >= BREAKCHECK_SKIP)
    {
 breakcheck_count = 0;
 ui_breakcheck();
    }
}
