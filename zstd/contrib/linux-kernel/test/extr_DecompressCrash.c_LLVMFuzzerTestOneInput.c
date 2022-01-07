
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decompressCheck (unsigned char const*,size_t) ;

int LLVMFuzzerTestOneInput(const unsigned char *srcBuff, size_t srcBuffSize) {
  decompressCheck(srcBuff, srcBuffSize);
  return 0;
}
