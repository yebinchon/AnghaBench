
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GorillaCompressed ;
typedef int Datum ;
typedef int CompressedGorillaData ;


 scalar_t__ PG_DETOAST_DATUM (int ) ;
 int compressed_gorilla_data_init_from_pointer (int *,int *) ;

__attribute__((used)) static void
compressed_gorilla_data_init_from_datum(CompressedGorillaData *data, Datum gorilla_compressed)
{
 compressed_gorilla_data_init_from_pointer(data,
             (GorillaCompressed *) PG_DETOAST_DATUM(
              gorilla_compressed));
}
