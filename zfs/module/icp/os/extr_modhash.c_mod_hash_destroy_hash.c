
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mh_nchains; struct TYPE_7__* mh_name; int mh_contents; struct TYPE_7__* mh_next; } ;
typedef TYPE_1__ mod_hash_t ;


 scalar_t__ MH_SIZE (int ) ;
 int kmem_free (TYPE_1__*,scalar_t__) ;
 TYPE_1__* mh_head ;
 int mh_head_lock ;
 int mod_hash_clear (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_destroy (int *) ;
 scalar_t__ strlen (TYPE_1__*) ;

void
mod_hash_destroy_hash(mod_hash_t *hash)
{
 mod_hash_t *mhp, *mhpp;

 mutex_enter(&mh_head_lock);



 if (hash == mh_head) {
  mh_head = mh_head->mh_next;
 } else {




  mhpp = ((void*)0);
  for (mhp = mh_head; mhp != ((void*)0); mhp = mhp->mh_next) {
   if (mhp == hash) {
    mhpp->mh_next = mhp->mh_next;
    break;
   }
   mhpp = mhp;
  }
 }
 mutex_exit(&mh_head_lock);




 mod_hash_clear(hash);

 rw_destroy(&hash->mh_contents);
 kmem_free(hash->mh_name, strlen(hash->mh_name) + 1);
 kmem_free(hash, MH_SIZE(hash->mh_nchains));
}
