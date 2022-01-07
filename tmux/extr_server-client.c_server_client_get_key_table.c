
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int options; } ;
struct client {struct session* session; } ;


 char* options_get_string (int ,char*) ;

const char *
server_client_get_key_table(struct client *c)
{
 struct session *s = c->session;
 const char *name;

 if (s == ((void*)0))
  return ("root");

 name = options_get_string(s->options, "key-table");
 if (*name == '\0')
  return ("root");
 return (name);
}
