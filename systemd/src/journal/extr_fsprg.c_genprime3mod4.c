
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int gcry_mpi_t ;


 int assert (int) ;
 int det_randomize (int*,size_t,void const*,size_t,int ) ;
 int gcry_mpi_add_ui (int ,int ,int) ;
 scalar_t__ gcry_prime_check (int ,int ) ;
 int mpi_import (int*,size_t) ;

__attribute__((used)) static gcry_mpi_t genprime3mod4(int bits, const void *seed, size_t seedlen, uint32_t idx) {
        size_t buflen = bits / 8;
        uint8_t buf[buflen];
        gcry_mpi_t p;

        assert(bits % 8 == 0);
        assert(buflen > 0);

        det_randomize(buf, buflen, seed, seedlen, idx);
        buf[0] |= 0xc0;
        buf[buflen - 1] |= 0x03;

        p = mpi_import(buf, buflen);
        while (gcry_prime_check(p, 0))
                gcry_mpi_add_ui(p, p, 4);

        return p;
}
