
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_3__ {int focused_inactive; } ;
struct TYPE_4__ {TYPE_1__ border_colors; } ;


 TYPE_2__* config ;
 struct cmd_results* handle_command (int,char**,int *,char*) ;

struct cmd_results *cmd_client_focused_inactive(int argc, char **argv) {
 return handle_command(argc, argv, &config->border_colors.focused_inactive, "client.focused_inactive");
}
