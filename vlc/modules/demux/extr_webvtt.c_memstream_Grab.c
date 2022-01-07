
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {size_t length; int * ptr; int * stream; } ;


 scalar_t__ VLC_SUCCESS ;
 int free (int *) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;

__attribute__((used)) static void memstream_Grab( struct vlc_memstream *ms, void **pp, size_t *pi )
{
    if( ms->stream != ((void*)0) && vlc_memstream_close( ms ) == VLC_SUCCESS )
    {
        if( ms->length == 0 )
        {
            free( ms->ptr );
            ms->ptr = ((void*)0);
        }
        *pp = ms->ptr;
        *pi = ms->length;
    }
}
