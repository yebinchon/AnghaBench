
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int gcry_mpi_t ;


 int gcry_mpi_add (int ,int ,int ) ;
 scalar_t__ gcry_mpi_cmp (int ,int ) ;
 int gcry_mpi_mulm (int ,int ,int ,int ) ;
 int gcry_mpi_new (int ) ;
 int gcry_mpi_release (int ) ;
 int gcry_mpi_set_ui (int ,int) ;
 int gcry_mpi_sub (int ,int ,int ) ;
 int gcry_mpi_sub_ui (int ,int const,int) ;

__attribute__((used)) static gcry_mpi_t twopowmodphi(uint64_t m, const gcry_mpi_t p) {
        gcry_mpi_t phi, r;
        int n;

        phi = gcry_mpi_new(0);
        gcry_mpi_sub_ui(phi, p, 1);


        for (n = 0; (1ULL << n) <= m; n++)
                ;

        r = gcry_mpi_new(0);
        gcry_mpi_set_ui(r, 1);
        while (n) {
                n--;
                gcry_mpi_mulm(r, r, r, phi);
                if (m & ((uint64_t)1 << n)) {
                        gcry_mpi_add(r, r, r);
                        if (gcry_mpi_cmp(r, phi) >= 0)
                                gcry_mpi_sub(r, r, phi);
                }
        }

        gcry_mpi_release(phi);
        return r;
}
