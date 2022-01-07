
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph {int (* foreach_symbol ) (struct graph*,int *,int ,int *) ;} ;
struct commit {int canvas; } ;


 int print_symbol ;
 int printf (char*,char const*) ;
 int stub1 (struct graph*,int *,int ,int *) ;

__attribute__((used)) static void
print_commit(struct graph *graph, struct commit *commit, const char *title)
{
 graph->foreach_symbol(graph, &commit->canvas, print_symbol, ((void*)0));
 printf(" %s\n", title);
}
