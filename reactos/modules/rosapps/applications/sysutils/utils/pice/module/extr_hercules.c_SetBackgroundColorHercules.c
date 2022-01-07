
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ blink; int bkcol; } ;
struct TYPE_5__ {TYPE_1__ bits; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
typedef int ECOLORS ;


 TYPE_3__ attr ;

void SetBackgroundColorHercules(ECOLORS col)
{
    attr.u.bits.bkcol = col;
    attr.u.bits.blink = 0;
}
