
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_3__ {int link; int filename; } ;
typedef TYPE_1__ filename_node_t ;


 int dup_basename (char const*,char*) ;
 int list_add_tail (struct list*,int *) ;
 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static void add_filename_node(struct list *list, const char *name)
{
  filename_node_t *node = xmalloc(sizeof *node);
  node->filename = dup_basename( name, ".idl" );
  list_add_tail(list, &node->link);
}
