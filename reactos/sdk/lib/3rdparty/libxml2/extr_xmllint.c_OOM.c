
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XMLLINT_ERR_MEM ;
 int fprintf (int ,char*,int) ;
 int maxmem ;
 int progresult ;
 int stderr ;

__attribute__((used)) static void
OOM(void)
{
    fprintf(stderr, "Ran out of memory needs > %d bytes\n", maxmem);
    progresult = XMLLINT_ERR_MEM;
}
