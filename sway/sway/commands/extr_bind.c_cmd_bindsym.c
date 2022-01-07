
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 struct cmd_results* cmd_bindsym_or_bindcode (int,char**,int,int) ;

struct cmd_results *cmd_bindsym(int argc, char **argv) {
 return cmd_bindsym_or_bindcode(argc, argv, 0, 0);
}
