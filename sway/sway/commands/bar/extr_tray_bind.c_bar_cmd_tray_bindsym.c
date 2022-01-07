
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 struct cmd_results* tray_bind (int,char**,int) ;

struct cmd_results *bar_cmd_tray_bindsym(int argc, char **argv) {
 return tray_bind(argc, argv, 0);
}
