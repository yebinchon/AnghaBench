
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_output {int dummy; } ;
struct sway_container {int outputs; } ;


 int list_del (int ,int) ;
 int list_find (int ,struct sway_output*) ;

__attribute__((used)) static void untrack_output(struct sway_container *con, void *data) {
 struct sway_output *output = data;
 int index = list_find(con->outputs, output);
 if (index != -1) {
  list_del(con->outputs, index);
 }
}
