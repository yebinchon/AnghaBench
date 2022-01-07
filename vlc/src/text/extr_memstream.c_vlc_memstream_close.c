
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {int error; int ptr; } ;


 int free (int ) ;

int vlc_memstream_close(struct vlc_memstream *ms)
{
    if (ms->error)
        free(ms->ptr);
    return ms->error;
}
