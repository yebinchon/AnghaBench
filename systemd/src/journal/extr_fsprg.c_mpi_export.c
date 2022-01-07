
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gcry_mpi_t ;


 int GCRYMPI_FMT_USG ;
 int assert (int) ;
 scalar_t__ gcry_mpi_cmp_ui (int const,int ) ;
 int gcry_mpi_get_nbits (int const) ;
 int gcry_mpi_print (int ,void*,unsigned int,size_t*,int const) ;
 int memzero (void*,size_t) ;

__attribute__((used)) static void mpi_export(void *buf, size_t buflen, const gcry_mpi_t x) {
        unsigned len;
        size_t nwritten;

        assert(gcry_mpi_cmp_ui(x, 0) >= 0);
        len = (gcry_mpi_get_nbits(x) + 7) / 8;
        assert(len <= buflen);
        memzero(buf, buflen);
        gcry_mpi_print(GCRYMPI_FMT_USG, buf + (buflen - len), len, &nwritten, x);
        assert(nwritten == len);
}
