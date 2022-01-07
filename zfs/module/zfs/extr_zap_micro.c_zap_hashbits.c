
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_t ;


 int ZAP_FLAG_HASH64 ;
 int zap_getflags (int *) ;

int
zap_hashbits(zap_t *zap)
{
 if (zap_getflags(zap) & ZAP_FLAG_HASH64)
  return (48);
 else
  return (28);
}
