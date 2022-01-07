
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int scope ;


 unsigned int UINT32_C (int) ;
 int assert (int) ;

__attribute__((used)) static bool is_bit_set(unsigned bit, uint32_t scope) {
        assert(bit < sizeof(scope)*8);
        return scope & (UINT32_C(1) << bit);
}
