
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int p_sys; } ;
typedef TYPE_1__ stream_t ;


 int Close (int *,int ) ;

__attribute__((used)) static void InClose( vlc_object_t *p_this )
{
    Close( p_this, ((stream_t *)p_this)->p_sys);
}
