
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct options_entry {int dummy; } ;
struct format_tree {TYPE_3__* s; int tree; TYPE_2__* w; TYPE_1__* wp; } ;
struct format_entry {char* key; scalar_t__ t; char* value; int (* cb ) (struct format_tree*,struct format_entry*) ;} ;
struct environ_entry {char* value; } ;
struct TYPE_6__ {int environ; int options; } ;
struct TYPE_5__ {int options; } ;
struct TYPE_4__ {int options; } ;


 int FORMAT_BASENAME ;
 int FORMAT_DIRNAME ;
 int FORMAT_QUOTE ;
 int FORMAT_TIMESTRING ;
 struct format_entry* RB_FIND (int ,int *,struct format_entry*) ;
 char* basename (char*) ;
 int ctime_r (scalar_t__*,char*) ;
 char* dirname (char*) ;
 struct environ_entry* environ_find (int ,char const*) ;
 int format_entry_tree ;
 char* format_quote (char*) ;
 int free (char*) ;
 int global_environ ;
 int global_options ;
 int global_s_options ;
 int global_w_options ;
 struct options_entry* options_parse_get (int ,char const*,int*,int ) ;
 char* options_tostring (struct options_entry*,int,int) ;
 size_t strcspn (char*,char*) ;
 int stub1 (struct format_tree*,struct format_entry*) ;
 int xasprintf (char**,char*,long long) ;
 void* xstrdup (char*) ;

__attribute__((used)) static char *
format_find(struct format_tree *ft, const char *key, int modifiers)
{
 struct format_entry *fe, fe_find;
 struct environ_entry *envent;
 static char s[64];
 struct options_entry *o;
 int idx;
 char *found, *saved;

 if (~modifiers & FORMAT_TIMESTRING) {
  o = options_parse_get(global_options, key, &idx, 0);
  if (o == ((void*)0) && ft->wp != ((void*)0))
   o = options_parse_get(ft->wp->options, key, &idx, 0);
  if (o == ((void*)0) && ft->w != ((void*)0))
   o = options_parse_get(ft->w->options, key, &idx, 0);
  if (o == ((void*)0))
   o = options_parse_get(global_w_options, key, &idx, 0);
  if (o == ((void*)0) && ft->s != ((void*)0))
   o = options_parse_get(ft->s->options, key, &idx, 0);
  if (o == ((void*)0))
   o = options_parse_get(global_s_options, key, &idx, 0);
  if (o != ((void*)0)) {
   found = options_tostring(o, idx, 1);
   goto found;
  }
 }
 found = ((void*)0);

 fe_find.key = (char *) key;
 fe = RB_FIND(format_entry_tree, &ft->tree, &fe_find);
 if (fe != ((void*)0)) {
  if (modifiers & FORMAT_TIMESTRING) {
   if (fe->t == 0)
    return (((void*)0));
   ctime_r(&fe->t, s);
   s[strcspn(s, "\n")] = '\0';
   found = xstrdup(s);
   goto found;
  }
  if (fe->t != 0) {
   xasprintf(&found, "%lld", (long long)fe->t);
   goto found;
  }
  if (fe->value == ((void*)0) && fe->cb != ((void*)0)) {
   fe->cb(ft, fe);
   if (fe->value == ((void*)0))
    fe->value = xstrdup("");
  }
  found = xstrdup(fe->value);
  goto found;
 }

 if (~modifiers & FORMAT_TIMESTRING) {
  envent = ((void*)0);
  if (ft->s != ((void*)0))
   envent = environ_find(ft->s->environ, key);
  if (envent == ((void*)0))
   envent = environ_find(global_environ, key);
  if (envent != ((void*)0) && envent->value != ((void*)0)) {
   found = xstrdup(envent->value);
   goto found;
  }
 }

 return (((void*)0));

found:
 if (found == ((void*)0))
  return (((void*)0));
 if (modifiers & FORMAT_BASENAME) {
  saved = found;
  found = xstrdup(basename(saved));
  free(saved);
 }
 if (modifiers & FORMAT_DIRNAME) {
  saved = found;
  found = xstrdup(dirname(saved));
  free(saved);
 }
 if (modifiers & FORMAT_QUOTE) {
  saved = found;
  found = xstrdup(format_quote(saved));
  free(saved);
 }
 return (found);
}
