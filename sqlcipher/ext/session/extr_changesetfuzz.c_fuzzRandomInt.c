
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ret ;


 int assert (int) ;
 int fuzzRandomBlob (int,unsigned char*) ;

__attribute__((used)) static unsigned int fuzzRandomInt(unsigned int nRange){
  unsigned int ret;
  assert( nRange>0 );
  fuzzRandomBlob(sizeof(ret), (unsigned char*)&ret);
  return (ret % nRange);
}
