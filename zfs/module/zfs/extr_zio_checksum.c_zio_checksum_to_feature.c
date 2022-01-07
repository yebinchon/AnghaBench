
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_feature_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;


 int SPA_FEATURE_EDONR ;
 int SPA_FEATURE_NONE ;
 int SPA_FEATURE_SHA512 ;
 int SPA_FEATURE_SKEIN ;
 int VERIFY (int) ;

 int ZIO_CHECKSUM_MASK ;



spa_feature_t
zio_checksum_to_feature(enum zio_checksum cksum)
{
 VERIFY((cksum & ~ZIO_CHECKSUM_MASK) == 0);

 switch (cksum) {
 case 129:
  return (SPA_FEATURE_SHA512);
 case 128:
  return (SPA_FEATURE_SKEIN);
 case 130:
  return (SPA_FEATURE_EDONR);
 default:
  return (SPA_FEATURE_NONE);
 }
}
