
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ret ;


 int fuzzRandomBlob (int,unsigned char*) ;

__attribute__((used)) static u64 fuzzRandomU64(){
  u64 ret;
  fuzzRandomBlob(sizeof(ret), (unsigned char*)&ret);
  return ret;
}
