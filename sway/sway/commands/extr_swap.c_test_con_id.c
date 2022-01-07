
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t id; } ;
struct sway_container {TYPE_1__ node; } ;



__attribute__((used)) static bool test_con_id(struct sway_container *container, void *data) {
 size_t *con_id = data;
 return container->node.id == *con_id;
}
