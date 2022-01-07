
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* str; } ;
typedef TYPE_1__ FT_Hashkey ;
typedef int FT_Hash ;


 size_t* hash_lookup (TYPE_1__,int ) ;

size_t*
  ft_hash_str_lookup( const char* key,
                      FT_Hash hash )
  {
    FT_Hashkey hk;


    hk.str = key;

    return hash_lookup( hk, hash );
  }
