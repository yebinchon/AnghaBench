
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;


 int vlc_tls_Read (int ,void*,size_t,int) ;

__attribute__((used)) static ssize_t Read(stream_t *access, void *buf, size_t len)
{
    return vlc_tls_Read(access->p_sys, buf, len, 0);
}
