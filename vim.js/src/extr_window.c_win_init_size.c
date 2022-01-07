
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* w_width; void* w_height; } ;
struct TYPE_3__ {void* fr_width; void* fr_height; } ;


 void* Columns ;
 void* ROWS_AVAIL ;
 TYPE_2__* firstwin ;
 TYPE_1__* topframe ;

void
win_init_size()
{
    firstwin->w_height = ROWS_AVAIL;
    topframe->fr_height = ROWS_AVAIL;




}
