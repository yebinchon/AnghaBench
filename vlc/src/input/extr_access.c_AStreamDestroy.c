
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int vlc_stream_Delete (TYPE_1__*) ;

__attribute__((used)) static void AStreamDestroy(stream_t *s)
{
    stream_t *access = s->p_sys;

    vlc_stream_Delete(access);
}
