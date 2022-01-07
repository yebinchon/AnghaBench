
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct criteria {struct criteria* raw; struct criteria* cmdlist; struct criteria* workspace; int con_mark; int window_role; int instance; int class; int app_id; int shell; int title; } ;


 int free (struct criteria*) ;
 int pattern_destroy (int ) ;

void criteria_destroy(struct criteria *criteria) {
 pattern_destroy(criteria->title);
 pattern_destroy(criteria->shell);
 pattern_destroy(criteria->app_id);





 pattern_destroy(criteria->con_mark);
 free(criteria->workspace);
 free(criteria->cmdlist);
 free(criteria->raw);
 free(criteria);
}
