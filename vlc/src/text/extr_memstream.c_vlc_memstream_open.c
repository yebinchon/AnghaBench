
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {int error; scalar_t__ length; int * ptr; } ;


 int EOF ;
 int * calloc (int,int) ;
 scalar_t__ unlikely (int ) ;

int vlc_memstream_open(struct vlc_memstream *ms)
{
    ms->error = 0;
    ms->ptr = calloc(1, 1);
    if (unlikely(ms->ptr == ((void*)0)))
        ms->error = EOF;
    ms->length = 0;
    return ms->error;
}
