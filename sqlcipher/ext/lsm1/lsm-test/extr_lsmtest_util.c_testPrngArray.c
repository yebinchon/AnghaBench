
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int testPrngValue (unsigned int) ;

void testPrngArray(unsigned int iVal, unsigned int *aOut, int nOut){
  int i;
  for(i=0; i<nOut; i++){
    aOut[i] = testPrngValue(iVal+i);
  }
}
