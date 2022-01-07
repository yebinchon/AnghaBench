
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ar_stream ;
typedef int ar_archive ;


 int warn (char*) ;

ar_archive *ar_open_7z_archive(ar_stream *stream)
{
    (void)stream;
    warn("7z support requires 7z SDK (define HAVE_7Z)");
    return ((void*)0);
}
