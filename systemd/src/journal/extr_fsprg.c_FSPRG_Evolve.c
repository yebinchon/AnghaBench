
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int gcry_mpi_t ;


 int gcry_mpi_mulm (int ,int ,int ,int ) ;
 int gcry_mpi_release (int ) ;
 int initialize_libgcrypt (int) ;
 int mpi_export (void*,int,int ) ;
 int mpi_import (void*,int) ;
 int read_secpar (void*) ;
 int uint64_export (void*,int,int ) ;
 int uint64_import (void*,int) ;

void FSPRG_Evolve(void *state) {
        gcry_mpi_t n, x;
        uint16_t secpar;
        uint64_t epoch;

        initialize_libgcrypt(0);

        secpar = read_secpar(state + 0);
        n = mpi_import(state + 2 + 0 * secpar / 8, secpar / 8);
        x = mpi_import(state + 2 + 1 * secpar / 8, secpar / 8);
        epoch = uint64_import(state + 2 + 2 * secpar / 8, 8);

        gcry_mpi_mulm(x, x, x, n);
        epoch++;

        mpi_export(state + 2 + 1 * secpar / 8, secpar / 8, x);
        uint64_export(state + 2 + 2 * secpar / 8, 8, epoch);

        gcry_mpi_release(n);
        gcry_mpi_release(x);
}
