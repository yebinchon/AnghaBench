
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int roundTripCheck (unsigned char const*,size_t) ;

int LLVMFuzzerTestOneInput(const unsigned char *srcBuff, size_t srcBuffSize) {
  roundTripCheck(srcBuff, srcBuffSize);
  return 0;
}
