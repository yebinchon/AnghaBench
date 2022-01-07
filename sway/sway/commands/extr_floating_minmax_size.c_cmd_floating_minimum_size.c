
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int floating_minimum_height; int floating_minimum_width; } ;


 TYPE_1__* config ;
 struct cmd_results* handle_command (int,char**,char*,int ,int *,int *) ;
 int min_usage ;

struct cmd_results *cmd_floating_minimum_size(int argc, char **argv) {
 return handle_command(argc, argv, "floating_minimum_size", min_usage,
   &config->floating_minimum_width, &config->floating_minimum_height);
}
