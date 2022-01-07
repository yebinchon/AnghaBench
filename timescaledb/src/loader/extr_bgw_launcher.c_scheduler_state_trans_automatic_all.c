
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;
typedef int DbHashEntry ;


 int hash_seq_init (int *,int *) ;
 int * hash_seq_search (int *) ;
 int scheduler_state_trans_automatic (int *) ;

__attribute__((used)) static void
scheduler_state_trans_automatic_all(HTAB *db_htab)
{
 HASH_SEQ_STATUS hash_seq;
 DbHashEntry *current_entry;

 hash_seq_init(&hash_seq, db_htab);
 while ((current_entry = hash_seq_search(&hash_seq)) != ((void*)0))
  scheduler_state_trans_automatic(current_entry);
}
