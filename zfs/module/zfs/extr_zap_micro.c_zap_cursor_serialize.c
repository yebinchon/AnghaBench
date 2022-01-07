
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long zc_hash; unsigned long long zc_serialized; int zc_cd; int * zc_zap; } ;
typedef TYPE_1__ zap_cursor_t ;
typedef unsigned long long uint64_t ;


 int ASSERT (int) ;
 unsigned long long zap_hashbits (int *) ;
 int zap_maxcd (int *) ;

uint64_t
zap_cursor_serialize(zap_cursor_t *zc)
{
 if (zc->zc_hash == -1ULL)
  return (-1ULL);
 if (zc->zc_zap == ((void*)0))
  return (zc->zc_serialized);
 ASSERT((zc->zc_hash & zap_maxcd(zc->zc_zap)) == 0);
 ASSERT(zc->zc_cd < zap_maxcd(zc->zc_zap));
 return ((zc->zc_hash >> (64 - zap_hashbits(zc->zc_zap))) |
     ((uint64_t)zc->zc_cd << zap_hashbits(zc->zc_zap)));
}
