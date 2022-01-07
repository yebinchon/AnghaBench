
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gcry_mpi_t ;


 int gcry_mpi_mod (int ,int const,int const) ;
 int gcry_mpi_new (int ) ;

__attribute__((used)) static void CRT_decompose(gcry_mpi_t *xp, gcry_mpi_t *xq, const gcry_mpi_t x, const gcry_mpi_t p, const gcry_mpi_t q) {
        *xp = gcry_mpi_new(0);
        *xq = gcry_mpi_new(0);
        gcry_mpi_mod(*xp, x, p);
        gcry_mpi_mod(*xq, x, q);
}
