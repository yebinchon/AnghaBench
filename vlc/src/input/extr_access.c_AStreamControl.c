
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {struct TYPE_4__* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int vlc_stream_vaControl (TYPE_1__*,int,int ) ;

__attribute__((used)) static int AStreamControl(stream_t *s, int cmd, va_list args)
{
    stream_t *access = s->p_sys;

    return vlc_stream_vaControl(access, cmd, args);
}
