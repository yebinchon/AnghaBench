
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_tls {int dummy; } ;
struct vlc_h2_frame {int data; } ;
typedef scalar_t__ ssize_t ;


 int free (struct vlc_h2_frame*) ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int (*) (struct vlc_h2_frame*),struct vlc_h2_frame*) ;
 size_t vlc_h2_frame_size (struct vlc_h2_frame*) ;
 scalar_t__ vlc_https_send (struct vlc_tls*,int ,size_t) ;

__attribute__((used)) static int vlc_h2_frame_send(struct vlc_tls *tls, struct vlc_h2_frame *f)
{
    size_t len = vlc_h2_frame_size(f);
    ssize_t val;

    vlc_cleanup_push(free, f);
    val = vlc_https_send(tls, f->data, len);
    vlc_cleanup_pop();
    free(f);

    return ((size_t)val == len) ? 0 : -1;
}
