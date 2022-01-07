
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int view; } ;
struct match_data {int matches; int criteria; } ;


 scalar_t__ criteria_matches_view (int ,int ) ;
 int list_add (int ,int ) ;

__attribute__((used)) static void criteria_get_views_iterator(struct sway_container *container,
  void *data) {
 struct match_data *match_data = data;
 if (container->view) {
  if (criteria_matches_view(match_data->criteria, container->view)) {
   list_add(match_data->matches, container->view);
  }
 }
}
