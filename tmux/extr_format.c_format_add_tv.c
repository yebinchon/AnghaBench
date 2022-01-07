
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct format_tree {int tree; } ;
struct format_entry {struct format_entry* value; int t; int * cb; struct format_entry* key; } ;


 struct format_entry* RB_INSERT (int ,int *,struct format_entry*) ;
 int format_entry_tree ;
 int free (struct format_entry*) ;
 struct format_entry* xmalloc (int) ;
 struct format_entry* xstrdup (char const*) ;

__attribute__((used)) static void
format_add_tv(struct format_tree *ft, const char *key, struct timeval *tv)
{
 struct format_entry *fe;
 struct format_entry *fe_now;

 fe = xmalloc(sizeof *fe);
 fe->key = xstrdup(key);

 fe_now = RB_INSERT(format_entry_tree, &ft->tree, fe);
 if (fe_now != ((void*)0)) {
  free(fe->key);
  free(fe);
  free(fe_now->value);
  fe = fe_now;
 }

 fe->cb = ((void*)0);
 fe->t = tv->tv_sec;

 fe->value = ((void*)0);
}
