
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMDLINE ;
 int FALSE ;
 int INSERT ;
 int State ;
 scalar_t__ arrow_used ;
 size_t curscript ;
 int ** scriptin ;
 int u_sync (int ) ;

__attribute__((used)) static void
may_sync_undo()
{
    if ((!(State & (INSERT + CMDLINE)) || arrow_used)
            && scriptin[curscript] == ((void*)0))
 u_sync(FALSE);
}
