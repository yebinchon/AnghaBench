
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gcry_mpi_t ;


 int gcry_mpi_add (int ,int ,int const) ;
 int gcry_mpi_invm (int ,int const,int const) ;
 int gcry_mpi_mul (int ,int const,int ) ;
 int gcry_mpi_mulm (int ,int ,int ,int const) ;
 int gcry_mpi_new (int ) ;
 int gcry_mpi_release (int ) ;
 int gcry_mpi_subm (int ,int const,int const,int const) ;

__attribute__((used)) static void CRT_compose(gcry_mpi_t *x, const gcry_mpi_t xp, const gcry_mpi_t xq, const gcry_mpi_t p, const gcry_mpi_t q) {
        gcry_mpi_t a, u;

        a = gcry_mpi_new(0);
        u = gcry_mpi_new(0);
        *x = gcry_mpi_new(0);
        gcry_mpi_subm(a, xq, xp, q);
        gcry_mpi_invm(u, p, q);
        gcry_mpi_mulm(a, a, u, q);
        gcry_mpi_mul(*x, p, a);
        gcry_mpi_add(*x, *x, xp);
        gcry_mpi_release(a);
        gcry_mpi_release(u);
}
