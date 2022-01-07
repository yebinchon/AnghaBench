
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* path; } ;
typedef TYPE_1__ DeviceNode ;


 int free (TYPE_1__*) ;

void device_node_array_free(DeviceNode *node, size_t n) {
        size_t i;

        for (i = 0; i < n; i++)
                free(node[i].path);

        free(node);
}
