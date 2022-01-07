
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int assert (int) ;
 int external_tls ;
 scalar_t__ vlc_tls_Write (int ,void const*,size_t) ;

__attribute__((used)) static void conn_send_raw(const void *buf, size_t len)
{
    ssize_t val = vlc_tls_Write(external_tls, buf, len);
    assert((size_t)val == len);
}
