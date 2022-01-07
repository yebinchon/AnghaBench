
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layout_cell {int dummy; } ;


 scalar_t__ layout_append (struct layout_cell*,char*,int) ;
 int layout_checksum (char*) ;
 int xasprintf (char**,char*,int ,char*) ;

char *
layout_dump(struct layout_cell *root)
{
 char layout[8192], *out;

 *layout = '\0';
 if (layout_append(root, layout, sizeof layout) != 0)
  return (((void*)0));

 xasprintf(&out, "%04hx,%s", layout_checksum(layout), layout);
 return (out);
}
