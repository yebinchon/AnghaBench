
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {int dummy; } ;
struct TYPE_2__ {int * tls; } ;
struct vlc_h1_conn {int active; scalar_t__ content_length; int connection_close; TYPE_1__ conn; } ;


 int CO (struct vlc_h1_conn*) ;
 scalar_t__ UINTMAX_MAX ;
 int assert (int) ;
 int free (char*) ;
 scalar_t__ unlikely (int ) ;
 struct vlc_http_stream* vlc_chunked_open (struct vlc_http_stream*,int *) ;
 struct vlc_h1_conn* vlc_h1_stream_conn (struct vlc_http_stream*) ;
 struct vlc_http_msg* vlc_h1_stream_fatal (struct vlc_h1_conn*) ;
 int vlc_http_dbg (int ,char*,int,char*) ;
 int vlc_http_minor (char*) ;
 int vlc_http_msg_attach (struct vlc_http_msg*,struct vlc_http_stream*) ;
 int vlc_http_msg_destroy (struct vlc_http_msg*) ;
 scalar_t__ vlc_http_msg_get_size (struct vlc_http_msg*) ;
 char* vlc_http_msg_get_token (struct vlc_http_msg*,char*,char*) ;
 struct vlc_http_msg* vlc_http_msg_headers (char*) ;
 int * vlc_http_next_token (char const*) ;
 char* vlc_https_headers_recv (int *,size_t*) ;

__attribute__((used)) static struct vlc_http_msg *vlc_h1_stream_wait(struct vlc_http_stream *stream)
{
    struct vlc_h1_conn *conn = vlc_h1_stream_conn(stream);
    struct vlc_http_msg *resp;
    const char *str;
    size_t len;
    int minor;

    assert(conn->active);

    if (conn->conn.tls == ((void*)0))
        return ((void*)0);

    char *payload = vlc_https_headers_recv(conn->conn.tls, &len);
    if (payload == ((void*)0))
        return vlc_h1_stream_fatal(conn);

    vlc_http_dbg(CO(conn), "incoming response:\n%.*s", (int)len, payload);

    resp = vlc_http_msg_headers(payload);
    minor = vlc_http_minor(payload);
    free(payload);

    if (resp == ((void*)0))
        return vlc_h1_stream_fatal(conn);

    assert(minor >= 0);

    conn->content_length = vlc_http_msg_get_size(resp);
    conn->connection_close = 0;

    if (minor >= 1)
    {
        if (vlc_http_msg_get_token(resp, "Connection", "close") != ((void*)0))
            conn->connection_close = 1;

        str = vlc_http_msg_get_token(resp, "Transfer-Encoding", "chunked");
        if (str != ((void*)0))
        {
            if (vlc_http_next_token(str) != ((void*)0))
            {
                vlc_http_msg_destroy(resp);
                return vlc_h1_stream_fatal(conn);
            }

            assert(conn->content_length == UINTMAX_MAX);
            stream = vlc_chunked_open(stream, conn->conn.tls);
            if (unlikely(stream == ((void*)0)))
            {
                vlc_http_msg_destroy(resp);
                return vlc_h1_stream_fatal(conn);
            }
        }
    }
    else
        conn->connection_close = 1;

    vlc_http_msg_attach(resp, stream);
    return resp;
}
