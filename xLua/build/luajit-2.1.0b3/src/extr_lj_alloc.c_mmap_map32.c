
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LJ_ALLOC_MMAP32_START ;
 int MAP_32BIT ;
 void* MFAIL ;
 int MMAP_FLAGS ;
 int MMAP_PROT ;
 int errno ;
 void* mmap (void*,size_t,int ,int,int,int ) ;
 void* mmap_probe (size_t) ;

__attribute__((used)) static void *mmap_map32(size_t size)
{





  {
    int olderr = errno;
    void *ptr = mmap((void *)LJ_ALLOC_MMAP32_START, size, MMAP_PROT, MAP_32BIT|MMAP_FLAGS, -1, 0);
    errno = olderr;







    return ptr;
  }
}
