
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; } ;
typedef int FT_Memory ;
typedef int FT_Int ;
typedef TYPE_1__ FT_Hashkey ;
typedef int FT_Hash ;
typedef int FT_Error ;


 int hash_insert (TYPE_1__,size_t,int ,int ) ;

FT_Error
  ft_hash_num_insert( FT_Int num,
                      size_t data,
                      FT_Hash hash,
                      FT_Memory memory )
  {
    FT_Hashkey hk;


    hk.num = num;

    return hash_insert( hk, data, hash, memory );
  }
