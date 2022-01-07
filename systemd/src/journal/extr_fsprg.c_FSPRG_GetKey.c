
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int det_randomize (void*,size_t,void const*,int,int ) ;
 int initialize_libgcrypt (int) ;
 int read_secpar (void const*) ;

void FSPRG_GetKey(const void *state, void *key, size_t keylen, uint32_t idx) {
        uint16_t secpar;

        initialize_libgcrypt(0);

        secpar = read_secpar(state + 0);
        det_randomize(key, keylen, state + 2, 2 * secpar / 8 + 8, idx);
}
