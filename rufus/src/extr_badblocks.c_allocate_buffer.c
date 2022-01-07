
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BB_SYS_PAGE_SIZE ;
 void* _mm_malloc (size_t,int ) ;

__attribute__((used)) static __inline void *allocate_buffer(size_t size) {
 return _mm_malloc(size, BB_SYS_PAGE_SIZE);
}
