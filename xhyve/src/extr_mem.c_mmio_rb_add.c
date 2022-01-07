
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmio_rb_tree {int dummy; } ;
struct mmio_rb_range {int mr_end; int mr_base; } ;


 int EEXIST ;
 struct mmio_rb_range* RB_INSERT (int ,struct mmio_rb_tree*,struct mmio_rb_range*) ;
 int mmio_rb_tree ;
 int printf (char*,int ,int ,int ,int ) ;

__attribute__((used)) static int
mmio_rb_add(struct mmio_rb_tree *rbt, struct mmio_rb_range *new)
{
 struct mmio_rb_range *overlap;

 overlap = RB_INSERT(mmio_rb_tree, rbt, new);

 if (overlap != ((void*)0)) {






  return (EEXIST);
 }

 return (0);
}
