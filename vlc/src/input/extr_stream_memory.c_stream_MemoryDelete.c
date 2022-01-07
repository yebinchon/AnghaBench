
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_stream_memory_private {int p_buffer; } ;
typedef int stream_t ;


 int free (int ) ;
 struct vlc_stream_memory_private* vlc_stream_Private (int *) ;

__attribute__((used)) static void stream_MemoryDelete(stream_t *s)
{
    struct vlc_stream_memory_private *sys = vlc_stream_Private(s);

    free(sys->p_buffer);
}
