
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* str; } ;
typedef TYPE_1__ FT_Hashkey ;
typedef int FT_Bool ;


 scalar_t__ ft_strcmp (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static FT_Bool
  hash_str_compare( FT_Hashkey* a,
                    FT_Hashkey* b )
  {
    if ( a->str[0] == b->str[0] &&
         ft_strcmp( a->str, b->str ) == 0 )
      return 1;

    return 0;
  }
