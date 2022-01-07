
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIFF_HORIZONTAL ;
 int diff_flags ;

int
diffopt_horizontal()
{
    return (diff_flags & DIFF_HORIZONTAL) != 0;
}
