
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int binCompare (void const*,int,void const*,int) ;
 int intCompare (void const*,int,void const*,int) ;
 int ptrCompare (void const*,int,void const*,int) ;
 int strCompare (void const*,int,void const*,int) ;

__attribute__((used)) static int (*compareFunction(int keyClass))(const void*,int,const void*,int){
  if( keyClass==128 ){
    return &strCompare;
  }else{
    assert( keyClass==131 );
    return &binCompare;
  }

}
