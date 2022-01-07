
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mod_hash_val_t ;
struct TYPE_6__ {int mh_contents; } ;
typedef TYPE_1__ mod_hash_t ;
typedef int mod_hash_key_t ;
typedef int mod_hash_hndl_t ;


 int MH_VAL_DESTROY (TYPE_1__*,int ) ;
 int RW_WRITER ;
 int i_mod_hash_insert_nosync (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ i_mod_hash_remove_nosync (TYPE_1__*,int ,int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
mod_hash_replace(mod_hash_t *hash, mod_hash_key_t key, mod_hash_val_t val)
{
 int res;
 mod_hash_val_t v;

 rw_enter(&hash->mh_contents, RW_WRITER);

 if (i_mod_hash_remove_nosync(hash, key, &v) == 0) {



  MH_VAL_DESTROY(hash, v);
 }
 res = i_mod_hash_insert_nosync(hash, key, val, (mod_hash_hndl_t)0);

 rw_exit(&hash->mh_contents);

 return (res);
}
