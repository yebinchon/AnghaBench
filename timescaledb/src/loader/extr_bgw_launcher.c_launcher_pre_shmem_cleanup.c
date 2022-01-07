
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * db_scheduler_handle; } ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;
typedef TYPE_1__ DbHashEntry ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int hash_destroy (int *) ;
 int hash_seq_init (int *,int *) ;
 TYPE_1__* hash_seq_search (int *) ;
 int pfree (int *) ;
 int terminate_background_worker (int *) ;
 int ts_bgw_message_queue_shmem_cleanup () ;

__attribute__((used)) static void
launcher_pre_shmem_cleanup(int code, Datum arg)
{
 HTAB *db_htab = *(HTAB **) DatumGetPointer(arg);
 HASH_SEQ_STATUS hash_seq;
 DbHashEntry *current_entry;


 if (db_htab != ((void*)0))
 {
  hash_seq_init(&hash_seq, db_htab);





  while ((current_entry = hash_seq_search(&hash_seq)) != ((void*)0))
  {
   if (current_entry->db_scheduler_handle != ((void*)0))
   {
    terminate_background_worker(current_entry->db_scheduler_handle);
    pfree(current_entry->db_scheduler_handle);
   }
  }

  hash_destroy(db_htab);
 }





 ts_bgw_message_queue_shmem_cleanup();
}
