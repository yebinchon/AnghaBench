
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u ;


 int __builtin_clzl (unsigned long) ;

__attribute__((used)) static inline unsigned long ALIGN_POWER2(unsigned long u) {

        if (u == 1)
                return 1;


        if (__builtin_clzl(u - 1UL) < 1)
                return 0;

        return 1UL << (sizeof(u) * 8 - __builtin_clzl(u - 1UL));
}
