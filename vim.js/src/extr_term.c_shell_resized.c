
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int set_shellsize (int ,int ,int ) ;

void
shell_resized()
{
    set_shellsize(0, 0, FALSE);
}
