
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugBreak () ;

__attribute__((used)) static void TLB_abort(void)
{
    DebugBreak();
}
