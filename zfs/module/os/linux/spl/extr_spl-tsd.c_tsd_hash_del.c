
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_hash_table_t ;
struct TYPE_3__ {int he_pid_list; int he_key_list; int he_list; } ;
typedef TYPE_1__ tsd_hash_entry_t ;


 int hlist_del (int *) ;
 int list_del_init (int *) ;

__attribute__((used)) static void
tsd_hash_del(tsd_hash_table_t *table, tsd_hash_entry_t *entry)
{
 hlist_del(&entry->he_list);
 list_del_init(&entry->he_key_list);
 list_del_init(&entry->he_pid_list);
}
