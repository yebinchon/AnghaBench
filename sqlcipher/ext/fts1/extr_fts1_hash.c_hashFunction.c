
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTS1_HASH_BINARY ;
 int FTS1_HASH_STRING ;
 int assert (int) ;
 int binHash (void const*,int) ;
 int strHash (void const*,int) ;

__attribute__((used)) static int (*hashFunction(int keyClass))(const void*,int){
  if( keyClass==FTS1_HASH_STRING ){
    return &strHash;
  }else{
    assert( keyClass==FTS1_HASH_BINARY );
    return &binHash;
  }
}
