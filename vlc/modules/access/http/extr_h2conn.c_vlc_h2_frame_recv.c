
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
typedef int uint8_t ;
struct vlc_tls {int dummy; } ;
struct vlc_h2_frame {int* data; int * next; } ;
typedef int ssize_t ;


 int free (struct vlc_h2_frame*) ;
 struct vlc_h2_frame* malloc (int) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int (*) (struct vlc_h2_frame*),struct vlc_h2_frame*) ;
 int vlc_https_recv (struct vlc_tls*,int*,int) ;

__attribute__((used)) static struct vlc_h2_frame *vlc_h2_frame_recv(struct vlc_tls *tls)
{
    uint8_t header[9];
    ssize_t r = vlc_https_recv(tls, header, 9);

    if (r < 3)
        return ((void*)0);

    uint_fast32_t len = 9 + ((header[0] << 16) | (header[1] << 8) | header[2]);

    struct vlc_h2_frame *f = malloc(sizeof (*f) + len);
    if (unlikely(f == ((void*)0)))
        return ((void*)0);

    f->next = ((void*)0);
    memcpy(f->data, header, r);
    len -= r;

    if (len > 0)
    {
        vlc_cleanup_push(free, f);
        if (vlc_https_recv(tls, f->data + r, len) < (ssize_t)len)
        {
            free(f);
            f = ((void*)0);
        }
        vlc_cleanup_pop();
    }
    return f;
}
