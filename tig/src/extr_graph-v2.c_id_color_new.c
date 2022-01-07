
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_color {char* id; size_t color; } ;


 struct id_color* malloc (int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

struct id_color *
id_color_new(const char *id, size_t color)
{
 struct id_color *node = malloc(sizeof(struct id_color));

 node->id = (char *) malloc(strlen(id) + 1);
 strcpy(node->id, id);
 node->color = color;

 return node;
}
