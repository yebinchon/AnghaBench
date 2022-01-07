
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* workspace; TYPE_2__* parent; } ;
struct sway_container {TYPE_5__ current; } ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_8__ {int layout; } ;
struct TYPE_9__ {TYPE_3__ current; } ;
struct TYPE_6__ {int layout; } ;
struct TYPE_7__ {TYPE_1__ current; } ;



enum sway_container_layout container_current_parent_layout(
  struct sway_container *con) {
 if (con->current.parent) {
  return con->current.parent->current.layout;
 }
 return con->current.workspace->current.layout;
}
