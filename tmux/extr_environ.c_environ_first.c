
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ_entry {int dummy; } ;
struct environ {int dummy; } ;


 struct environ_entry* RB_MIN (int ,struct environ*) ;
 int environ ;

struct environ_entry *
environ_first(struct environ *env)
{
 return (RB_MIN(environ, env));
}
