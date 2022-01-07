
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * pf_read; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;


 TYPE_1__* GetAccess (TYPE_1__*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_stream_ReadPartial (TYPE_1__*,void*,size_t) ;

__attribute__((used)) static ssize_t Read(stream_t *access, void *buf, size_t len)
{
    stream_t *a = GetAccess(access);
    if (a == ((void*)0))
        return 0;




    if (unlikely(a->pf_read == ((void*)0)))
        return 0;

    return vlc_stream_ReadPartial(a, buf, len);
}
