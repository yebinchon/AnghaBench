
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct cmdq_item {int dummy; } ;


 int ***** cfg_causes ;
 size_t cfg_ncauses ;
 int cmdq_print (struct cmdq_item*,char*,int ****) ;
 int free (int *****) ;

void
cfg_print_causes(struct cmdq_item *item)
{
 u_int i;

 for (i = 0; i < cfg_ncauses; i++) {
  cmdq_print(item, "%s", cfg_causes[i]);
  free(cfg_causes[i]);
 }

 free(cfg_causes);
 cfg_causes = ((void*)0);
 cfg_ncauses = 0;
}
