
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int limit; int table; int compare; int lookup; scalar_t__ used; } ;
typedef int FT_UInt ;
typedef int FT_Memory ;
typedef TYPE_1__* FT_Hash ;
typedef int FT_Error ;
typedef scalar_t__ FT_Bool ;


 int FT_MEM_NEW_ARRAY (int ,int) ;
 int INITIAL_HT_SIZE ;
 int hash_num_compare ;
 int hash_num_lookup ;
 int hash_str_compare ;
 int hash_str_lookup ;

__attribute__((used)) static FT_Error
  hash_init( FT_Hash hash,
             FT_Bool is_num,
             FT_Memory memory )
  {
    FT_UInt sz = INITIAL_HT_SIZE;
    FT_Error error;


    hash->size = sz;
    hash->limit = sz / 3;
    hash->used = 0;

    if ( is_num )
    {
      hash->lookup = hash_num_lookup;
      hash->compare = hash_num_compare;
    }
    else
    {
      hash->lookup = hash_str_lookup;
      hash->compare = hash_str_compare;
    }

    FT_MEM_NEW_ARRAY( hash->table, sz );

    return error;
  }
