
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ar_stream ;
typedef int FILE ;


 int * ar_open_stream (int *,int ,int ,int ,int ) ;
 int file_close ;
 int file_read ;
 int file_seek ;
 int file_tell ;

ar_stream *ar_open(FILE *f)
{
    if (!f)
        return ((void*)0);
    return ar_open_stream(f, file_close, file_read, file_seek, file_tell);
}
