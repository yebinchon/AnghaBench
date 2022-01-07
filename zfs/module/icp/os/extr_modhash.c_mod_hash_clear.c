
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mh_contents; } ;
typedef TYPE_1__ mod_hash_t ;


 int ASSERT (TYPE_1__*) ;
 int RW_WRITER ;
 int i_mod_hash_clear_nosync (TYPE_1__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

void
mod_hash_clear(mod_hash_t *hash)
{
 ASSERT(hash);
 rw_enter(&hash->mh_contents, RW_WRITER);
 i_mod_hash_clear_nosync(hash);
 rw_exit(&hash->mh_contents);
}
