
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arena_ind ;


 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,void*,size_t*,int *,int ) ;

__attribute__((used)) static unsigned
arenas_create_mallctl(void) {
 unsigned arena_ind;
 size_t sz;

 sz = sizeof(arena_ind);
 assert_d_eq(mallctl("arenas.create", (void *)&arena_ind, &sz, ((void*)0), 0),
     0, "Error in arenas.create");

 return arena_ind;
}
