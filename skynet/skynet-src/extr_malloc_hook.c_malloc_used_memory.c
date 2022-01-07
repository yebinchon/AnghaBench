
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t _used_memory ;

size_t
malloc_used_memory(void) {
 return _used_memory;
}
