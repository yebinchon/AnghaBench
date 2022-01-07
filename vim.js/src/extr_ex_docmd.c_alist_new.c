
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int al_refcount; } ;
typedef TYPE_1__ alist_T ;
struct TYPE_6__ {TYPE_1__* w_alist; } ;


 int alist_init (TYPE_1__*) ;
 scalar_t__ alloc (unsigned int) ;
 TYPE_3__* curwin ;
 TYPE_1__ global_alist ;

void
alist_new()
{
    curwin->w_alist = (alist_T *)alloc((unsigned)sizeof(alist_T));
    if (curwin->w_alist == ((void*)0))
    {
 curwin->w_alist = &global_alist;
 ++global_alist.al_refcount;
    }
    else
    {
 curwin->w_alist->al_refcount = 1;
 alist_init(curwin->w_alist);
    }
}
