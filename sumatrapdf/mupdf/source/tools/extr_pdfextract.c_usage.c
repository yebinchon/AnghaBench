
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr, "usage: mutool extract [options] file.pdf [object numbers]\n");
 fprintf(stderr, "\t-p\tpassword\n");
 fprintf(stderr, "\t-r\tconvert images to rgb\n");
 fprintf(stderr, "\t-N\tdo not use ICC color conversions\n");
 exit(1);
}
