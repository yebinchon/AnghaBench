
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tp_next; } ;


 TYPE_1__* first_tabpage ;
 scalar_t__ one_window () ;

__attribute__((used)) static int
last_window()
{
    return (one_window() && first_tabpage->tp_next == ((void*)0));
}
