
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_symbol {int dummy; } ;
struct graph {int dummy; } ;


 char* graph_fn (struct graph_symbol const*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static bool
print_symbol(void *__, const struct graph *graph, const struct graph_symbol *symbol, int color_id, bool first)
{
 const char *chars = graph_fn(symbol);

 printf("%s", chars + !!first);
 return 0;
}
