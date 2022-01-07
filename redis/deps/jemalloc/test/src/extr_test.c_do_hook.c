
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_REENTRANT_ALLOCS ;
 int free (int ) ;
 int malloc (size_t) ;

__attribute__((used)) static void
do_hook(bool *hook_ran, void (**hook)()) {
 *hook_ran = 1;
 *hook = ((void*)0);

 size_t alloc_size = 1;
 for (int i = 0; i < NUM_REENTRANT_ALLOCS; i++) {
  free(malloc(alloc_size));
  alloc_size *= 2;
 }
}
