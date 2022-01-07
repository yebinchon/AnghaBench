
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_entry {char const* name; } ;
struct line {scalar_t__ data; } ;



__attribute__((used)) static const char *
tree_path(const struct line *line)
{
 return ((struct tree_entry *) line->data)->name;
}
