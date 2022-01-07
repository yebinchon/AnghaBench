
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTS3_HASH_BINARY ;
 int FTS3_HASH_STRING ;
 int assert (int) ;
 int fts3BinHash (void const*,int) ;
 int fts3StrHash (void const*,int) ;

__attribute__((used)) static int (*ftsHashFunction(int keyClass))(const void*,int){
  if( keyClass==FTS3_HASH_STRING ){
    return &fts3StrHash;
  }else{
    assert( keyClass==FTS3_HASH_BINARY );
    return &fts3BinHash;
  }
}
