
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; } ;


 TYPE_1__ ui ;
 int ui_invalidate () ;

__attribute__((used)) static void on_motion(int x, int y)
{
 ui.x = x;
 ui.y = y;
 ui_invalidate();
}
