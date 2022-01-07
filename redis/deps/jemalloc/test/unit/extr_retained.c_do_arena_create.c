
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h ;
typedef int extent_hooks_t ;


 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,void*,size_t*,void*,int) ;

__attribute__((used)) static unsigned
do_arena_create(extent_hooks_t *h) {
 unsigned arena_ind;
 size_t sz = sizeof(unsigned);
 assert_d_eq(mallctl("arenas.create", (void *)&arena_ind, &sz,
     (void *)(h != ((void*)0) ? &h : ((void*)0)), (h != ((void*)0) ? sizeof(h) : 0)), 0,
     "Unexpected mallctl() failure");
 return arena_ind;
}
