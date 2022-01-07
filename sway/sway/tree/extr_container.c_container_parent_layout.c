
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {TYPE_2__* workspace; TYPE_1__* parent; } ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_4__ {int layout; } ;
struct TYPE_3__ {int layout; } ;


 int L_NONE ;

enum sway_container_layout container_parent_layout(struct sway_container *con) {
 if (con->parent) {
  return con->parent->layout;
 }
 if (con->workspace) {
  return con->workspace->layout;
 }
 return L_NONE;
}
