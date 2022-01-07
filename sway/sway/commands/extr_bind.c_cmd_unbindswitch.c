
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 struct cmd_results* cmd_bind_or_unbind_switch (int,char**,int) ;

struct cmd_results *cmd_unbindswitch(int argc, char **argv) {
 return cmd_bind_or_unbind_switch(argc, argv, 1);
}
