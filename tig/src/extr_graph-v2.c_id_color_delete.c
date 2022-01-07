
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_color {struct id_color* id; } ;


 int free (struct id_color*) ;

__attribute__((used)) static void
id_color_delete(struct id_color *node)
{
 free(node->id);
 free(node);
}
