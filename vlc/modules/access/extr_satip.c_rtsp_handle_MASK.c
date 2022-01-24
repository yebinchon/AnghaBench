#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  enum rtsp_result { ____Placeholder_rtsp_result } rtsp_result ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_7__ {char* content_base; int /*<<< orphan*/  tcp_sock; void* stream_id; int /*<<< orphan*/  keepalive_interval; int /*<<< orphan*/  session_id; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 

__attribute__((used)) static enum rtsp_result FUNC10(stream_t *access, bool *interrupted) {
    access_sys_t *sys = access->p_sys;
    uint8_t buffer[512];
    int rtsp_result = 0;
    bool have_header = false;
    size_t content_length = 0;
    size_t read = 0;
    char *in, *val;

    /* Parse header */
    while (!have_header) {
        in = FUNC4((vlc_object_t*)access, sys->tcp_sock, 5000,
                interrupted);
        if (in == NULL)
            break;

        if (FUNC9(in, "RTSP/1.0 ", 9) == 0) {
            rtsp_result = FUNC1(in + 9);
        } else if (FUNC9(in, "Content-Base:", 13) == 0) {
            FUNC2(sys->content_base);

            val = in + 13;
            FUNC7(val);

            sys->content_base = FUNC8(val);
        } else if (FUNC9(in, "Content-Length:", 15) == 0) {
            val = in + 16;
            FUNC7(val);

            content_length = FUNC1(val);
        } else if (FUNC9("Session:", in, 8) == 0) {
            val = in + 8;
            FUNC7(val);

            FUNC5(val, sys->session_id, 64, &sys->keepalive_interval);
        } else if (FUNC9("Transport:", in, 10) == 0) {
            val = in + 10;
            FUNC7(val);

            if (FUNC6(access, val) != 0) {
                rtsp_result = VLC_EGENERIC;
                break;
            }
        } else if (FUNC9("com.ses.streamID:", in, 17) == 0) {
            val = in + 17;
            FUNC7(val);

            sys->stream_id = FUNC1(val);
        } else if (in[0] == '\0') {
            have_header = true;
        }

        FUNC2(in);
    }

    /* Discard further content */
    while (content_length > 0 &&
            (read = FUNC3(access, sys->tcp_sock, buffer, FUNC0(sizeof(buffer), content_length))))
        content_length -= read;

    return rtsp_result;
}