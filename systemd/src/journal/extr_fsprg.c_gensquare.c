
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int gcry_mpi_t ;


 int assert (int) ;
 int det_randomize (int*,size_t,void const*,size_t,int ) ;
 scalar_t__ gcry_mpi_cmp (int ,int const) ;
 int gcry_mpi_mulm (int ,int ,int ,int const) ;
 int mpi_import (int*,size_t) ;

__attribute__((used)) static gcry_mpi_t gensquare(const gcry_mpi_t n, const void *seed, size_t seedlen, uint32_t idx, unsigned secpar) {
        size_t buflen = secpar / 8;
        uint8_t buf[buflen];
        gcry_mpi_t x;

        det_randomize(buf, buflen, seed, seedlen, idx);
        buf[0] &= 0x7f;
        x = mpi_import(buf, buflen);
        assert(gcry_mpi_cmp(x, n) < 0);
        gcry_mpi_mulm(x, x, x, n);
        return x;
}
