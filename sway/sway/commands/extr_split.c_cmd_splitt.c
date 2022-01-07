
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int EXPECTED_EQUAL_TO ;
 scalar_t__ L_HORIZ ;
 scalar_t__ L_VERT ;
 struct cmd_results* checkarg (int,char*,int ,int ) ;
 TYPE_2__* config ;
 scalar_t__ container_parent_layout (struct sway_container*) ;
 struct cmd_results* do_split (scalar_t__) ;

struct cmd_results *cmd_splitt(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "splitv", EXPECTED_EQUAL_TO, 0))) {
  return error;
 }

 struct sway_container *con = config->handler_context.container;

 if (con && container_parent_layout(con) == L_VERT) {
  return do_split(L_HORIZ);
 } else {
  return do_split(L_VERT);
 }
}
