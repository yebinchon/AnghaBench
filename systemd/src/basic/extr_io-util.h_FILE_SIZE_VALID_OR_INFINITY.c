
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int FILE_SIZE_VALID (scalar_t__) ;

__attribute__((used)) static inline bool FILE_SIZE_VALID_OR_INFINITY(uint64_t l) {



        if (l == (uint64_t) -1)
                return 1;

        return FILE_SIZE_VALID(l);

}
