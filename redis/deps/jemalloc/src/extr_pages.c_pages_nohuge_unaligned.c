
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pages_nohuge_impl (void*,size_t,int) ;

__attribute__((used)) static bool
pages_nohuge_unaligned(void *addr, size_t size) {
 return pages_nohuge_impl(addr, size, 0);
}
