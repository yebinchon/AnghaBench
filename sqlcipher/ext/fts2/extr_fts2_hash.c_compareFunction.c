
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTS2_HASH_BINARY ;
 int FTS2_HASH_STRING ;
 int assert (int) ;
 int binCompare (void const*,int,void const*,int) ;
 int strCompare (void const*,int,void const*,int) ;

__attribute__((used)) static int (*compareFunction(int keyClass))(const void*,int,const void*,int){
  if( keyClass==FTS2_HASH_STRING ){
    return &strCompare;
  }else{
    assert( keyClass==FTS2_HASH_BINARY );
    return &binCompare;
  }
}
