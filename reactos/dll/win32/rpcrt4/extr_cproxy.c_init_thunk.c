
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunk {unsigned int index; int call_stubless; } ;


 int call_stubless_func ;
 struct thunk thunk_template ;

__attribute__((used)) static inline void init_thunk( struct thunk *thunk, unsigned int index )
{
    *thunk = thunk_template;
    thunk->index = index;
    thunk->call_stubless = call_stubless_func;
}
