
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int* ids; } ;
typedef TYPE_1__ BS_LIST ;


 int find (TYPE_1__ const*,int const*) ;

int bs_list_find(const BS_LIST *list, const uint8_t *data)
{
    int r = find(list, data);


    if (r < 0) {
        return -1;
    }

    return list->ids[r];
}
