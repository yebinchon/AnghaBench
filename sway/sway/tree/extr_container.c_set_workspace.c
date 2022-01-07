
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {TYPE_1__* parent; int workspace; } ;
struct TYPE_2__ {int workspace; } ;



__attribute__((used)) static void set_workspace(struct sway_container *container, void *data) {
 container->workspace = container->parent->workspace;
}
