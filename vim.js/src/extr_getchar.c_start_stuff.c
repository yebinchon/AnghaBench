
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * b_next; } ;
struct TYPE_4__ {scalar_t__ bh_space; TYPE_1__ bh_first; TYPE_1__* bh_curr; } ;


 TYPE_2__ stuffbuff ;

__attribute__((used)) static void
start_stuff()
{
    if (stuffbuff.bh_first.b_next != ((void*)0))
    {
 stuffbuff.bh_curr = &(stuffbuff.bh_first);
 stuffbuff.bh_space = 0;
    }
}
