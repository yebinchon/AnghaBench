
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 size_t MSG_000 ;
 size_t MSG_MAX ;
 int * current_msg_table ;
 int * default_msg_table ;
 int safe_free (int ) ;

__attribute__((used)) static void mtab_destroy(BOOL reinit)
{
 size_t j;
 for (j=1; j<MSG_MAX-MSG_000; j++) {
  safe_free(current_msg_table[j]);
  if (!reinit)
   safe_free(default_msg_table[j]);
 }
}
