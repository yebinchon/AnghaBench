
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JBIG2_VERSION_MAJOR ;
 int JBIG2_VERSION_MINOR ;
 int fprintf (int ,char*,int,int) ;
 int stdout ;

__attribute__((used)) static int
print_version(void)
{
    fprintf(stdout, "jbig2dec %d.%d\n", JBIG2_VERSION_MAJOR, JBIG2_VERSION_MINOR);
    return 0;
}
