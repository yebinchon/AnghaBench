
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct client {TYPE_1__* keytable; } ;
struct TYPE_3__ {int references; } ;


 TYPE_1__* key_bindings_get_table (char const*,int) ;
 int key_bindings_unref_table (TYPE_1__*) ;
 char* server_client_get_key_table (struct client*) ;

void
server_client_set_key_table(struct client *c, const char *name)
{
 if (name == ((void*)0))
  name = server_client_get_key_table(c);

 key_bindings_unref_table(c->keytable);
 c->keytable = key_bindings_get_table(name, 1);
 c->keytable->references++;
}
