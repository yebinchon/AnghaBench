
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* window; } ;
struct TYPE_7__ {TYPE_1__* outer_window; } ;
struct TYPE_8__ {TYPE_2__ base; } ;
struct TYPE_6__ {int * uri; } ;
typedef int IUri ;
typedef TYPE_4__ HTMLLocation ;



__attribute__((used)) static IUri *get_uri(HTMLLocation *This)
{
    if(!This->window || !This->window->base.outer_window)
        return ((void*)0);
    return This->window->base.outer_window->uri;
}
