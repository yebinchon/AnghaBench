
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_entry {int dummy; } ;
struct options {int tree; } ;


 struct options_entry* RB_MIN (int ,int *) ;
 int options_tree ;

struct options_entry *
options_first(struct options *oo)
{
 return (RB_MIN(options_tree, &oo->tree));
}
