
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {int error; } ;



int vlc_memstream_flush(struct vlc_memstream *ms)
{
    return ms->error;
}
