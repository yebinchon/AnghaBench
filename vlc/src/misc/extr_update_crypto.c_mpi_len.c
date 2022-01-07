
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int scalar_number (int const*,int) ;

__attribute__((used)) static int mpi_len(const uint8_t *mpi)
{
    return (scalar_number(mpi, 2) + 7) / 8;
}
