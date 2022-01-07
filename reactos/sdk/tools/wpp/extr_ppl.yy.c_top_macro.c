
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int macexpstackentry_t ;


 int ** macexpstack ;
 int macexpstackidx ;

__attribute__((used)) static macexpstackentry_t *top_macro(void)
{
 return macexpstackidx > 0 ? macexpstack[macexpstackidx-1] : ((void*)0);
}
