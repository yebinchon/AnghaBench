
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int id; int options; int active; } ;
struct format_tree {int dummy; } ;


 int FORMAT_WINDOW ;
 struct format_tree* format_create (int *,int *,int,int ) ;
 int format_defaults_pane (struct format_tree*,int ) ;
 int format_defaults_window (struct format_tree*,struct window*) ;
 char* format_expand (struct format_tree*,char const*) ;
 int format_free (struct format_tree*) ;
 char* options_get_string (int ,char*) ;

__attribute__((used)) static char *
format_window_name(struct window *w)
{
 struct format_tree *ft;
 const char *fmt;
 char *name;

 ft = format_create(((void*)0), ((void*)0), FORMAT_WINDOW|w->id, 0);
 format_defaults_window(ft, w);
 format_defaults_pane(ft, w->active);

 fmt = options_get_string(w->options, "automatic-rename-format");
 name = format_expand(ft, fmt);

 format_free(ft);
 return (name);
}
