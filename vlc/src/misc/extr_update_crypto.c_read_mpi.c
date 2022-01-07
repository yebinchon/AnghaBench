
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int const*,size_t) ;
 size_t mpi_len (int const*) ;

__attribute__((used)) static size_t read_mpi(uint8_t *dst, const uint8_t *buf, size_t buflen, size_t bits)
{
    if (buflen < 2)
        return 0;

    size_t n = mpi_len(buf);

    if (n * 8 > bits)
        return 0;

    n += 2;

    if (buflen < n)
        return 0;

    memcpy(dst, buf, n);
    return n;
}
