
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 struct cmd_results* bar_cmd_bind (int,char**,int,int) ;

struct cmd_results *bar_cmd_unbindsym(int argc, char **argv) {
 return bar_cmd_bind(argc, argv, 0, 1);
}
