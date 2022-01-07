
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {struct options* parent; int tree; } ;


 int RB_INIT (int *) ;
 struct options* xcalloc (int,int) ;

struct options *
options_create(struct options *parent)
{
 struct options *oo;

 oo = xcalloc(1, sizeof *oo);
 RB_INIT(&oo->tree);
 oo->parent = parent;
 return (oo);
}
