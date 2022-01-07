
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* ops; int vid; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_2__ {int id; } ;


 int displayed_views () ;
 int strcmp (int ,int ) ;
 scalar_t__ view_is_displayed (struct view*) ;

__attribute__((used)) static bool
forward_request_to_child(struct view *child, enum request request)
{
 return displayed_views() == 2 && view_is_displayed(child) &&
  !strcmp(child->vid, child->ops->id);
}
