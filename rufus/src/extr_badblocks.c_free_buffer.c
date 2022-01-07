
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _mm_free (void*) ;

__attribute__((used)) static __inline void free_buffer(void* p) {
 _mm_free(p);
}
