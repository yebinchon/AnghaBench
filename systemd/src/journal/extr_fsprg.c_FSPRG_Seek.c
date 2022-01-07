
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int gcry_mpi_t ;


 int CRT_compose (int *,int ,int ,int ,int ) ;
 int CRT_decompose (int *,int *,int ,int ,int ) ;
 int RND_GEN_X ;
 int gcry_mpi_mul (int ,int ,int ) ;
 int gcry_mpi_new (int ) ;
 int gcry_mpi_powm (int ,int ,int ,int ) ;
 int gcry_mpi_release (int ) ;
 int gensquare (int ,void const*,size_t,int ,int) ;
 int initialize_libgcrypt (int) ;
 int mpi_export (void*,int,int ) ;
 int mpi_import (void const*,int) ;
 int read_secpar (void const*) ;
 int store_secpar (void*,int) ;
 int twopowmodphi (int ,int ) ;
 int uint64_export (void*,int,int ) ;

void FSPRG_Seek(void *state, uint64_t epoch, const void *msk, const void *seed, size_t seedlen) {
        gcry_mpi_t p, q, n, x, xp, xq, kp, kq, xm;
        uint16_t secpar;

        initialize_libgcrypt(0);

        secpar = read_secpar(msk + 0);
        p = mpi_import(msk + 2 + 0 * (secpar / 2) / 8, (secpar / 2) / 8);
        q = mpi_import(msk + 2 + 1 * (secpar / 2) / 8, (secpar / 2) / 8);

        n = gcry_mpi_new(0);
        gcry_mpi_mul(n, p, q);

        x = gensquare(n, seed, seedlen, RND_GEN_X, secpar);
        CRT_decompose(&xp, &xq, x, p, q);

        kp = twopowmodphi(epoch, p);
        kq = twopowmodphi(epoch, q);

        gcry_mpi_powm(xp, xp, kp, p);
        gcry_mpi_powm(xq, xq, kq, q);

        CRT_compose(&xm, xp, xq, p, q);

        store_secpar(state + 0, secpar);
        mpi_export(state + 2 + 0 * secpar / 8, secpar / 8, n);
        mpi_export(state + 2 + 1 * secpar / 8, secpar / 8, xm);
        uint64_export(state + 2 + 2 * secpar / 8, 8, epoch);

        gcry_mpi_release(p);
        gcry_mpi_release(q);
        gcry_mpi_release(n);
        gcry_mpi_release(x);
        gcry_mpi_release(xp);
        gcry_mpi_release(xq);
        gcry_mpi_release(kp);
        gcry_mpi_release(kq);
        gcry_mpi_release(xm);
}
