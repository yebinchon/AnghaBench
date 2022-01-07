
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_hash_entry {int dummy; } ;


 int ASSERT (int ) ;
 int MUTEX_DEFAULT ;
 int * kmem_cache_create (char*,int,int ,int *,int *,int *,int *,int *,int ) ;
 int * mh_e_cache ;
 int mh_head_lock ;
 int mutex_init (int *,int *,int ,int *) ;

void
mod_hash_init(void)
{
 ASSERT(mh_e_cache == ((void*)0));
 mh_e_cache = kmem_cache_create("mod_hash_entries",
     sizeof (struct mod_hash_entry), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     ((void*)0), 0);

 mutex_init(&mh_head_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
}
