
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gcry_mpi_t ;


 int GCRYMPI_FMT_USG ;
 int assert (int) ;
 int assert_se (int) ;
 scalar_t__ gcry_mpi_cmp_ui (int ,int ) ;
 int gcry_mpi_get_nbits (int ) ;
 scalar_t__ gcry_mpi_scan (int *,int ,void const*,size_t,int *) ;

__attribute__((used)) static gcry_mpi_t mpi_import(const void *buf, size_t buflen) {
        gcry_mpi_t h;
        unsigned len;

        assert_se(gcry_mpi_scan(&h, GCRYMPI_FMT_USG, buf, buflen, ((void*)0)) == 0);
        len = (gcry_mpi_get_nbits(h) + 7) / 8;
        assert(len <= buflen);
        assert(gcry_mpi_cmp_ui(h, 0) >= 0);

        return h;
}
