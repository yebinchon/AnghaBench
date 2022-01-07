
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int binHash (void const*,int) ;
 int intHash (void const*,int) ;
 int ptrHash (void const*,int) ;
 int strHash (void const*,int) ;

__attribute__((used)) static int (*hashFunction(int keyClass))(const void*,int){
  if( keyClass==128 ){
    return &strHash;
  }else{
    assert( keyClass==131 );
    return &binHash;
  }

}
