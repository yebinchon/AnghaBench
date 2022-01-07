
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int glutTimerFunc (int,void (*) (int),int ) ;
 int reload () ;
 scalar_t__ reloadrequested ;
 int ui_invalidate () ;

__attribute__((used)) static void on_timer(int timer_id)
{
 if (reloadrequested)
 {
  reload();
  ui_invalidate();
  reloadrequested = 0;
 }
 glutTimerFunc(500, on_timer, 0);
}
