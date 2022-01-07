
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int testPrngValue (unsigned int) ;

void testPrngString(unsigned int iVal, char *aOut, int nOut){
  int i;
  for(i=0; i<(nOut-1); i++){
    aOut[i] = 'a' + (testPrngValue(iVal+i) % 26);
  }
  aOut[i] = '\0';
}
