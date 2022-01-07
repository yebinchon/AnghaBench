
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NUL ;
 scalar_t__* T_TI ;
 scalar_t__ full_screen ;

int
swapping_screen()
{
    return (full_screen && *T_TI != NUL);
}
