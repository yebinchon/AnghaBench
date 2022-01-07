
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* lookup ) (int *) ;int size; scalar_t__ (* compare ) (int *,int *) ;TYPE_1__** table; } ;
struct TYPE_5__ {int key; } ;
typedef int FT_ULong ;
typedef TYPE_1__* FT_Hashnode ;
typedef int FT_Hashkey ;
typedef TYPE_2__* FT_Hash ;


 int stub1 (int *) ;
 scalar_t__ stub2 (int *,int *) ;

__attribute__((used)) static FT_Hashnode*
  hash_bucket( FT_Hashkey key,
               FT_Hash hash )
  {
    FT_ULong res = 0;
    FT_Hashnode* bp = hash->table;
    FT_Hashnode* ndp;


    res = (hash->lookup)( &key );

    ndp = bp + ( res % hash->size );
    while ( *ndp )
    {
      if ( (hash->compare)( &(*ndp)->key, &key ) )
        break;

      ndp--;
      if ( ndp < bp )
        ndp = bp + ( hash->size - 1 );
    }

    return ndp;
  }
