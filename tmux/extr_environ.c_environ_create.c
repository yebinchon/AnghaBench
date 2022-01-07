
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ {int dummy; } ;


 int RB_INIT (struct environ*) ;
 struct environ* xcalloc (int,int) ;

struct environ *
environ_create(void)
{
 struct environ *env;

 env = xcalloc(1, sizeof *env);
 RB_INIT(env);

 return (env);
}
