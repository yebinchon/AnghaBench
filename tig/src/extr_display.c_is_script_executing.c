
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pipe; } ;


 TYPE_1__ script_io ;

bool
is_script_executing(void)
{
 return script_io.pipe != -1;
}
