
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int window_w; int window_h; } ;


 TYPE_1__ ui ;

__attribute__((used)) static void on_reshape(int w, int h)
{
 ui.window_w = w;
 ui.window_h = h;
}
