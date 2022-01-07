
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Memory ;
typedef int FT_Hash ;
typedef int FT_Error ;


 int hash_init (int ,int ,int ) ;

FT_Error
  ft_hash_str_init( FT_Hash hash,
                    FT_Memory memory )
  {
    return hash_init( hash, 0, memory );
  }
