
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
typedef int dmu_object_type_t ;
typedef int boolean_t ;
typedef int arc_buf_t ;


 int * arc_alloc_raw_buf (int *,int ,int ,int ,int const*,int const*,int const*,int ,int ,int ,int) ;
 int arc_loaned_bytes ;
 int arc_onloan_tag ;
 int atomic_add_64 (int *,int ) ;

arc_buf_t *
arc_loan_raw_buf(spa_t *spa, uint64_t dsobj, boolean_t byteorder,
    const uint8_t *salt, const uint8_t *iv, const uint8_t *mac,
    dmu_object_type_t ot, uint64_t psize, uint64_t lsize,
    enum zio_compress compression_type)
{
 arc_buf_t *buf = arc_alloc_raw_buf(spa, arc_onloan_tag, dsobj,
     byteorder, salt, iv, mac, ot, psize, lsize, compression_type);

 atomic_add_64(&arc_loaned_bytes, psize);
 return (buf);
}
