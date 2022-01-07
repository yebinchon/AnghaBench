
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; } ;
typedef TYPE_1__ HTMLOuterWindow ;



void get_top_window(HTMLOuterWindow *window, HTMLOuterWindow **ret)
{
    HTMLOuterWindow *iter;

    for(iter = window; iter->parent; iter = iter->parent);
    *ret = iter;
}
