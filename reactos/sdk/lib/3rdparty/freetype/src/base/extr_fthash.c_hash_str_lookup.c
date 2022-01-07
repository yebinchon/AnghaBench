
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; } ;
typedef int FT_ULong ;
typedef TYPE_1__ FT_Hashkey ;



__attribute__((used)) static FT_ULong
  hash_str_lookup( FT_Hashkey* key )
  {
    const char* kp = key->str;
    FT_ULong res = 0;



    while ( *kp )
      res = ( res << 5 ) - res + (FT_ULong)*kp++;

    return res;
  }
