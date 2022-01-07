
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mod_hash_val_t ;
struct TYPE_5__ {int mh_contents; } ;
typedef TYPE_1__ mod_hash_t ;
typedef int mod_hash_key_t ;


 int MH_VAL_DESTROY (TYPE_1__*,int ) ;
 int RW_WRITER ;
 int i_mod_hash_remove_nosync (TYPE_1__*,int ,int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
mod_hash_destroy(mod_hash_t *hash, mod_hash_key_t key)
{
 mod_hash_val_t val;
 int rv;

 rw_enter(&hash->mh_contents, RW_WRITER);

 if ((rv = i_mod_hash_remove_nosync(hash, key, &val)) == 0) {



  MH_VAL_DESTROY(hash, val);
 }

 rw_exit(&hash->mh_contents);
 return (rv);
}
