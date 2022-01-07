
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {struct cmd_results* error; } ;


 int free (struct cmd_results*) ;

void free_cmd_results(struct cmd_results *results) {
 if (results->error) {
  free(results->error);
 }
 free(results);
}
