
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static
int PrintUsage(void)
{
 fprintf(stderr, "Sets profile version\n\nUsage: vericc --r<version> iccprofile.icc\n");
 return 0;
}
