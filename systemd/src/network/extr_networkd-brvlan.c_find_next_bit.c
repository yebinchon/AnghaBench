
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BUILTIN_FFS_U32 (int) ;
 int __builtin_ffs (int) ;

__attribute__((used)) static int find_next_bit(int i, uint32_t x) {
        int j;

        if (i >= 32)
                return -1;


        if (i < 0)
                return BUILTIN_FFS_U32(x);


        j = __builtin_ffs(x >> i);
        return j ? j + i : 0;
}
