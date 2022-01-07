
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zap_normflags; } ;
typedef TYPE_1__ zap_t ;
struct TYPE_10__ {int zn_key_intlen; char const* zn_key_orig; int zn_matchtype; int zn_normflags; char const* zn_normbuf; char const* zn_key_norm; void* zn_key_norm_numints; int zn_hash; void* zn_key_orig_numints; TYPE_1__* zn_zap; } ;
typedef TYPE_2__ zap_name_t ;
typedef int matchtype_t ;


 int KM_SLEEP ;
 int MT_MATCH_CASE ;
 int U8_TEXTPREP_TOUPPER ;
 TYPE_2__* kmem_alloc (int,int ) ;
 void* strlen (char const*) ;
 int zap_hash (TYPE_2__*) ;
 int zap_name_free (TYPE_2__*) ;
 scalar_t__ zap_normalize (TYPE_1__*,char const*,char const*,int) ;

zap_name_t *
zap_name_alloc(zap_t *zap, const char *key, matchtype_t mt)
{
 zap_name_t *zn = kmem_alloc(sizeof (zap_name_t), KM_SLEEP);

 zn->zn_zap = zap;
 zn->zn_key_intlen = sizeof (*key);
 zn->zn_key_orig = key;
 zn->zn_key_orig_numints = strlen(zn->zn_key_orig) + 1;
 zn->zn_matchtype = mt;
 zn->zn_normflags = zap->zap_normflags;






 if (mt & MT_MATCH_CASE)
  zn->zn_normflags &= ~U8_TEXTPREP_TOUPPER;

 if (zap->zap_normflags) {




  if (zap_normalize(zap, key, zn->zn_normbuf,
      zap->zap_normflags) != 0) {
   zap_name_free(zn);
   return (((void*)0));
  }
  zn->zn_key_norm = zn->zn_normbuf;
  zn->zn_key_norm_numints = strlen(zn->zn_key_norm) + 1;
 } else {
  if (mt != 0) {
   zap_name_free(zn);
   return (((void*)0));
  }
  zn->zn_key_norm = zn->zn_key_orig;
  zn->zn_key_norm_numints = zn->zn_key_orig_numints;
 }

 zn->zn_hash = zap_hash(zn);

 if (zap->zap_normflags != zn->zn_normflags) {




  if (zap_normalize(zap, key, zn->zn_normbuf,
      zn->zn_normflags) != 0) {
   zap_name_free(zn);
   return (((void*)0));
  }
  zn->zn_key_norm_numints = strlen(zn->zn_key_norm) + 1;
 }

 return (zn);
}
