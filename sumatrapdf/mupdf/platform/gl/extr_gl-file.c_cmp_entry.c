
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {char* name; scalar_t__ is_dir; } ;


 int strcmp (char*,char*) ;

__attribute__((used)) static int cmp_entry(const void *av, const void *bv)
{
 const struct entry *a = av;
 const struct entry *b = bv;

 if (a->name[0] == '.' && a->name[1] == 0) return -1;
 if (b->name[0] == '.' && b->name[1] == 0) return 1;

 if (a->name[0] == '.' && a->name[1] == '.' && a->name[2] == 0) return -1;
 if (b->name[0] == '.' && b->name[1] == '.' && b->name[2] == 0) return 1;

 if (a->is_dir && !b->is_dir) return -1;
 if (b->is_dir && !a->is_dir) return 1;

 return strcmp(a->name, b->name);
}
