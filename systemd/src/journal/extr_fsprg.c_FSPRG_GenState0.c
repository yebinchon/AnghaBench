
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int gcry_mpi_t ;


 int RND_GEN_X ;
 int gcry_mpi_release (int ) ;
 int gensquare (int ,void const*,size_t,int ,int) ;
 int initialize_libgcrypt (int) ;
 int memcpy (void*,void const*,int) ;
 int memzero (void*,int) ;
 int mpi_export (void*,int,int ) ;
 int mpi_import (void const*,int) ;
 int read_secpar (void const*) ;

void FSPRG_GenState0(void *state, const void *mpk, const void *seed, size_t seedlen) {
        gcry_mpi_t n, x;
        uint16_t secpar;

        initialize_libgcrypt(0);

        secpar = read_secpar(mpk + 0);
        n = mpi_import(mpk + 2, secpar / 8);
        x = gensquare(n, seed, seedlen, RND_GEN_X, secpar);

        memcpy(state, mpk, 2 + secpar / 8);
        mpi_export(state + 2 + 1 * secpar / 8, secpar / 8, x);
        memzero(state + 2 + 2 * secpar / 8, 8);

        gcry_mpi_release(n);
        gcry_mpi_release(x);
}
