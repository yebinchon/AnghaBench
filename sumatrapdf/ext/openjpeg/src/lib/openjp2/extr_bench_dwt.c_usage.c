
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void usage(void)
{
    printf(
        "bench_dwt [-size value] [-check] [-display] [-num_resolutions val]\n");
    printf(
        "          [-offset x y] [-num_threads val]\n");
    exit(1);
}
