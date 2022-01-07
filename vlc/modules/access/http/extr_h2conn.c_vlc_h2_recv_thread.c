
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_h2_stream {struct vlc_h2_stream* older; } ;
struct vlc_h2_parser {int dummy; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int tls; } ;
struct vlc_h2_conn {int lock; struct vlc_h2_stream* streams; TYPE_1__ conn; } ;


 int CO (struct vlc_h2_conn*) ;
 int VLC_H2_CANCEL ;
 int cleanup_parser ;
 scalar_t__ unlikely (int ) ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int ,struct vlc_h2_parser*) ;
 int vlc_h2_frame_dump (int ,struct vlc_h2_frame*,char*) ;
 struct vlc_h2_frame* vlc_h2_frame_recv (int ) ;
 int vlc_h2_parse (struct vlc_h2_parser*,struct vlc_h2_frame*) ;
 int vlc_h2_parse_destroy (struct vlc_h2_parser*) ;
 struct vlc_h2_parser* vlc_h2_parse_init (struct vlc_h2_conn*,int *) ;
 int vlc_h2_parser_callbacks ;
 int vlc_h2_stream_reset (struct vlc_h2_stream*,int ) ;
 int vlc_http_dbg (int ,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *vlc_h2_recv_thread(void *data)
{
    struct vlc_h2_conn *conn = data;
    struct vlc_h2_frame *frame;
    struct vlc_h2_parser *parser;
    int canc, val;

    canc = vlc_savecancel();
    parser = vlc_h2_parse_init(conn, &vlc_h2_parser_callbacks);
    if (unlikely(parser == ((void*)0)))
        goto fail;

    vlc_cleanup_push(cleanup_parser, parser);
    do
    {
        vlc_restorecancel(canc);
        frame = vlc_h2_frame_recv(conn->conn.tls);
        canc = vlc_savecancel();

        if (frame == ((void*)0))
        {
            vlc_http_dbg(CO(conn), "connection shutdown");
            break;
        }

        vlc_h2_frame_dump(CO(conn), frame, "in");
        vlc_mutex_lock(&conn->lock);
        val = vlc_h2_parse(parser, frame);
        vlc_mutex_unlock(&conn->lock);
    }
    while (val == 0);

    vlc_cleanup_pop();
    vlc_h2_parse_destroy(parser);
fail:

    vlc_mutex_lock(&conn->lock);
    for (struct vlc_h2_stream *s = conn->streams; s != ((void*)0); s = s->older)
        vlc_h2_stream_reset(s, VLC_H2_CANCEL);
    vlc_mutex_unlock(&conn->lock);
    return ((void*)0);
}
