
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMP (size_t,size_t) ;
 int MIN (size_t,size_t) ;
 scalar_t__ memcmp_safe (void const*,void const*,int ) ;

__attribute__((used)) static inline int memcmp_nn(const void *s1, size_t n1, const void *s2, size_t n2) {
        return memcmp_safe(s1, s2, MIN(n1, n2))
            ?: CMP(n1, n2);
}
