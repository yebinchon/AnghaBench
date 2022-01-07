
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vlc_http_msg const vlc_http_msg ;


 int assert (int) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int stderr ;
 size_t strlen (char*) ;
 int vlc_http_msg_destroy (struct vlc_http_msg const*) ;
 char* vlc_http_msg_format (struct vlc_http_msg const*,size_t*,int) ;
 scalar_t__ vlc_http_msg_get_status (struct vlc_http_msg const*) ;
 scalar_t__ vlc_http_msg_h2_frame (struct vlc_http_msg const*,int,int) ;
 struct vlc_http_msg const* vlc_http_msg_headers (char*) ;
 int * vlc_http_msg_read (struct vlc_http_msg const*) ;

__attribute__((used)) static void check_msg(struct vlc_http_msg *in,
                      void (*cb)(const struct vlc_http_msg *))
{
    struct vlc_http_msg *out;
    char *m1;
    size_t len;

    cb(in);

    m1 = vlc_http_msg_format(in, &len, 0);
    assert(m1 != ((void*)0));
    assert(strlen(m1) == len);
    out = vlc_http_msg_headers(m1);
    fprintf(stderr, "%s", m1);
    free(m1);

    if (vlc_http_msg_get_status(in) >= 0)
    {
        assert(out != ((void*)0));
        cb(out);
        vlc_http_msg_destroy(out);
    }

    out = (struct vlc_http_msg *)vlc_http_msg_h2_frame(in, 1, 1);
    assert(out != ((void*)0));
    cb(out);
    assert(vlc_http_msg_read(out) == ((void*)0));
    vlc_http_msg_destroy(out);

    cb(in);
    vlc_http_msg_destroy(in);
}
