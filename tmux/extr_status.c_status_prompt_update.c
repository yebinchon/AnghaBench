
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_tree {int dummy; } ;
struct client {char* prompt_string; char* prompt_buffer; int flags; scalar_t__ prompt_hindex; int prompt_index; } ;


 int CLIENT_REDRAWSTATUS ;
 int FORMAT_NONE ;
 struct format_tree* format_create (struct client*,int *,int ,int ) ;
 int format_defaults (struct format_tree*,struct client*,int *,int *,int *) ;
 void* format_expand_time (struct format_tree*,char const*) ;
 int format_free (struct format_tree*) ;
 int free (char*) ;
 char* utf8_fromcstr (char*) ;
 int utf8_strlen (char*) ;

void
status_prompt_update(struct client *c, const char *msg, const char *input)
{
 struct format_tree *ft;
 char *tmp;

 ft = format_create(c, ((void*)0), FORMAT_NONE, 0);
 format_defaults(ft, c, ((void*)0), ((void*)0), ((void*)0));

 tmp = format_expand_time(ft, input);

 free(c->prompt_string);
 c->prompt_string = format_expand_time(ft, msg);

 free(c->prompt_buffer);
 c->prompt_buffer = utf8_fromcstr(tmp);
 c->prompt_index = utf8_strlen(c->prompt_buffer);

 c->prompt_hindex = 0;

 c->flags |= CLIENT_REDRAWSTATUS;

 free(tmp);
 format_free(ft);
}
