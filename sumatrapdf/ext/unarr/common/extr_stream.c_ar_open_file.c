
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ar_stream ;
typedef int FILE ;


 int * ar_open (int *) ;
 int * fopen (char const*,char*) ;

ar_stream *ar_open_file(const char *path)
{
    FILE *f = path ? fopen(path, "rb") : ((void*)0);
    return ar_open(f);
}
