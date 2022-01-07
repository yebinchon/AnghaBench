
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_output {int failed; int lock; int tls; } ;


 void* vlc_h2_output_thread (void*) ;
 int vlc_https_send (int ,char const*,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void *vlc_h2_client_output_thread(void *data)
{
    static const char http2_hello[] = "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n";
    struct vlc_h2_output *out = data;

    if (vlc_https_send(out->tls, http2_hello, 24) < 24)
    {
        vlc_mutex_lock(&out->lock);
        out->failed = 1;
        vlc_mutex_unlock(&out->lock);
        return ((void*)0);
    }

    return vlc_h2_output_thread(data);
}
