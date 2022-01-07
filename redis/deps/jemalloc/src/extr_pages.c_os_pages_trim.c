
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE ;
 int assert (int) ;
 void* os_pages_map (void*,size_t,int ,int*) ;
 int os_pages_unmap (void*,size_t) ;

__attribute__((used)) static void *
os_pages_trim(void *addr, size_t alloc_size, size_t leadsize, size_t size,
    bool *commit) {
 void *ret = (void *)((uintptr_t)addr + leadsize);

 assert(alloc_size >= leadsize + size);
 size_t trailsize = alloc_size - leadsize - size;

 if (leadsize != 0) {
  os_pages_unmap(addr, leadsize);
 }
 if (trailsize != 0) {
  os_pages_unmap((void *)((uintptr_t)ret + size), trailsize);
 }
 return ret;

}
