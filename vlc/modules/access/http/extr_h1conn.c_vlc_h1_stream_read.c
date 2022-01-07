
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vlc_http_stream {int dummy; } ;
struct TYPE_7__ {int * tls; } ;
struct vlc_h1_conn {size_t content_length; TYPE_1__ conn; int active; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_8__ {scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_2__ block_t ;


 int ECONNRESET ;
 size_t UINTMAX_MAX ;
 int assert (int ) ;
 TYPE_2__* block_Alloc (size_t) ;
 int block_Release (TYPE_2__*) ;
 int errno ;
 scalar_t__ unlikely (int ) ;
 struct vlc_h1_conn* vlc_h1_stream_conn (struct vlc_http_stream*) ;
 TYPE_2__* vlc_http_error ;
 scalar_t__ vlc_tls_Read (int *,int ,size_t,int) ;

__attribute__((used)) static block_t *vlc_h1_stream_read(struct vlc_http_stream *stream)
{
    struct vlc_h1_conn *conn = vlc_h1_stream_conn(stream);
    size_t size = 2048;

    assert(conn->active);

    if (conn->conn.tls == ((void*)0))
        return vlc_http_error;

    if (size > conn->content_length)
        size = conn->content_length;
    if (size == 0)
        return ((void*)0);

    block_t *block = block_Alloc(size);
    if (unlikely(block == ((void*)0)))
        return vlc_http_error;

    ssize_t val = vlc_tls_Read(conn->conn.tls, block->p_buffer, size, 0);
    if (val <= 0)
    {
        block_Release(block);
        if (val < 0)
            return vlc_http_error;
        if (conn->content_length != UINTMAX_MAX)
        {
            errno = ECONNRESET;
            return vlc_http_error;
        }
        return ((void*)0);
    }

    block->i_buffer = val;
    if (conn->content_length != UINTMAX_MAX)
        conn->content_length -= val;

    return block;
}
