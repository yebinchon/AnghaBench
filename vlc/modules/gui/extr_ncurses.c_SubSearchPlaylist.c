
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
struct TYPE_5__ {TYPE_1__ pl_item_names; } ;
typedef TYPE_2__ intf_sys_t ;


 scalar_t__ strcasestr (int ,char*) ;

__attribute__((used)) static int SubSearchPlaylist(intf_sys_t *sys, char *searchstring,
                             int i_start, int i_stop)
{
    for (int i = i_start + 1; i < i_stop; i++)
        if (strcasestr(sys->pl_item_names.data[i], searchstring))
            return i;
    return -1;
}
