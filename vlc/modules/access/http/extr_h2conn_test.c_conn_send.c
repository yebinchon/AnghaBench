
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int data; } ;
typedef scalar_t__ ssize_t ;


 int assert (int) ;
 int external_tls ;
 int free (struct vlc_h2_frame*) ;
 size_t vlc_h2_frame_size (struct vlc_h2_frame*) ;
 scalar_t__ vlc_tls_Write (int ,int ,size_t) ;

__attribute__((used)) static void conn_send(struct vlc_h2_frame *f)
{
    assert(f != ((void*)0));

    size_t len = vlc_h2_frame_size(f);
    ssize_t val = vlc_tls_Write(external_tls, f->data, len);
    assert((size_t)val == len);
    free(f);
}
