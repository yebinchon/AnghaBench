
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int options; } ;
struct format_tree {int dummy; } ;
struct client {char* title; int tty; struct session* session; } ;


 int FORMAT_NONE ;
 struct format_tree* format_create (struct client*,int *,int ,int ) ;
 int format_defaults (struct format_tree*,struct client*,int *,int *,int *) ;
 char* format_expand_time (struct format_tree*,char const*) ;
 int format_free (struct format_tree*) ;
 int free (char*) ;
 char* options_get_string (int ,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int tty_set_title (int *,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
server_client_set_title(struct client *c)
{
 struct session *s = c->session;
 const char *template;
 char *title;
 struct format_tree *ft;

 template = options_get_string(s->options, "set-titles-string");

 ft = format_create(c, ((void*)0), FORMAT_NONE, 0);
 format_defaults(ft, c, ((void*)0), ((void*)0), ((void*)0));

 title = format_expand_time(ft, template);
 if (c->title == ((void*)0) || strcmp(title, c->title) != 0) {
  free(c->title);
  c->title = xstrdup(title);
  tty_set_title(&c->tty, c->title);
 }
 free(title);

 format_free(ft);
}
