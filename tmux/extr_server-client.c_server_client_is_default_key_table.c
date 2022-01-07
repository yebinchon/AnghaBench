
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_table {int name; } ;
struct client {int dummy; } ;


 int server_client_get_key_table (struct client*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
server_client_is_default_key_table(struct client *c, struct key_table *table)
{
 return (strcmp(table->name, server_client_get_key_table(c)) == 0);
}
