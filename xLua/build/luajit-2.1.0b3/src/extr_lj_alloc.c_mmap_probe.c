
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 uintptr_t LJ_ALLOC_MBITS ;
 int LJ_ALLOC_MMAP_PROBE_LINEAR ;
 uintptr_t LJ_ALLOC_MMAP_PROBE_LOWER ;
 int LJ_ALLOC_MMAP_PROBE_MAX ;
 int LJ_PAGESIZE ;
 scalar_t__ LJ_UNLIKELY (int) ;
 void* MFAIL ;
 int MMAP_FLAGS_PROBE ;
 int MMAP_PROT ;
 int errno ;
 void* mmap (void*,size_t,int ,int ,int,int ) ;
 uintptr_t mmap_probe_seed () ;
 int munmap (void*,size_t) ;

__attribute__((used)) static void *mmap_probe(size_t size)
{

  static uintptr_t hint_addr = 0;
  static uintptr_t hint_prng = 0;
  int olderr = errno;
  int retry;
  for (retry = 0; retry < LJ_ALLOC_MMAP_PROBE_MAX; retry++) {
    void *p = mmap((void *)hint_addr, size, MMAP_PROT, MMAP_FLAGS_PROBE, -1, 0);
    uintptr_t addr = (uintptr_t)p;
    if ((addr >> LJ_ALLOC_MBITS) == 0 && addr >= LJ_ALLOC_MMAP_PROBE_LOWER) {

      hint_addr = addr + size;
      errno = olderr;
      return p;
    }
    if (p != MFAIL) {
      munmap(p, size);
    } else if (errno == ENOMEM) {
      return MFAIL;
    }
    if (hint_addr) {

      if (retry < LJ_ALLOC_MMAP_PROBE_LINEAR) {
 hint_addr += 0x1000000;
 if (((hint_addr + size) >> LJ_ALLOC_MBITS) != 0)
   hint_addr = 0;
 continue;
      } else if (retry == LJ_ALLOC_MMAP_PROBE_LINEAR) {

 hint_addr = 0;
 continue;
      }
    }

    if (LJ_UNLIKELY(hint_prng == 0)) {
      hint_prng = mmap_probe_seed();
    }

    hint_addr ^= addr & ~((uintptr_t)(LJ_PAGESIZE-1));
    do {
      hint_prng = hint_prng * 1103515245 + 12345;
      hint_addr ^= hint_prng * (uintptr_t)LJ_PAGESIZE;
      hint_addr &= (((uintptr_t)1 << LJ_ALLOC_MBITS)-1);
    } while (hint_addr < LJ_ALLOC_MMAP_PROBE_LOWER);
  }
  errno = olderr;
  return MFAIL;
}
