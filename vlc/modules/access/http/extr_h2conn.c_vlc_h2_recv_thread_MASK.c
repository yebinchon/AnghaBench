#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vlc_h2_stream {struct vlc_h2_stream* older; } ;
struct vlc_h2_parser {int dummy; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tls; } ;
struct vlc_h2_conn {int /*<<< orphan*/  lock; struct vlc_h2_stream* streams; TYPE_1__ conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_conn*) ; 
 int /*<<< orphan*/  VLC_H2_CANCEL ; 
 int /*<<< orphan*/  cleanup_parser ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vlc_h2_parser*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vlc_h2_frame*,char*) ; 
 struct vlc_h2_frame* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vlc_h2_parser*,struct vlc_h2_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_h2_parser*) ; 
 struct vlc_h2_parser* FUNC8 (struct vlc_h2_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_h2_parser_callbacks ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_h2_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 () ; 

__attribute__((used)) static void *FUNC15(void *data)
{
    struct vlc_h2_conn *conn = data;
    struct vlc_h2_frame *frame;
    struct vlc_h2_parser *parser;
    int canc, val;

    canc = FUNC14();
    parser = FUNC8(conn, &vlc_h2_parser_callbacks);
    if (FUNC1(parser == NULL))
        goto fail;

    FUNC3(cleanup_parser, parser);
    do
    {
        FUNC13(canc);
        frame = FUNC5(conn->conn.tls);
        canc = FUNC14();

        if (frame == NULL)
        {
            FUNC10(FUNC0(conn), "connection shutdown");
            break;
        }

        FUNC4(FUNC0(conn), frame, "in");
        FUNC11(&conn->lock);
        val = FUNC6(parser, frame);
        FUNC12(&conn->lock);
    }
    while (val == 0);

    FUNC2();
    FUNC7(parser);
fail:
    /* Terminate any remaining stream */
    FUNC11(&conn->lock);
    for (struct vlc_h2_stream *s = conn->streams; s != NULL; s = s->older)
        FUNC9(s, VLC_H2_CANCEL);
    FUNC12(&conn->lock);
    return NULL;
}