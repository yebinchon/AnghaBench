
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snlua {int L; scalar_t__ mem_limit; int mem_report; } ;


 int MEMORY_WARNING_REPORT ;
 int lalloc ;
 int lua_newstate (int ,struct snlua*) ;
 int memset (struct snlua*,int ,int) ;
 struct snlua* skynet_malloc (int) ;

struct snlua *
snlua_create(void) {
 struct snlua * l = skynet_malloc(sizeof(*l));
 memset(l,0,sizeof(*l));
 l->mem_report = MEMORY_WARNING_REPORT;
 l->mem_limit = 0;
 l->L = lua_newstate(lalloc, l);
 return l;
}
