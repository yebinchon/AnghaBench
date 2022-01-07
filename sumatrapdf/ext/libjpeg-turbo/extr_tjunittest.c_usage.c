
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,...) ;

void usage(char *progName)
{
 printf("\nUSAGE: %s [options]\n", progName);
 printf("Options:\n");
 printf("-yuv = test YUV encoding/decoding support\n");
 printf("-alloc = test automatic buffer allocation\n");
 exit(1);
}
