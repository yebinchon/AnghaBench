
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef enum rtsp_result { ____Placeholder_rtsp_result } rtsp_result ;
typedef int buffer ;
struct TYPE_7__ {char* content_base; int tcp_sock; void* stream_id; int keepalive_interval; int session_id; } ;
typedef TYPE_2__ access_sys_t ;


 int VLC_EGENERIC ;
 int __MIN (int,size_t) ;
 void* atoi (char*) ;
 int free (char*) ;
 size_t net_Read (TYPE_1__*,int ,int *,int ) ;
 char* net_readln_timeout (int *,int ,int,int*) ;
 int parse_session (char*,int ,int,int *) ;
 scalar_t__ parse_transport (TYPE_1__*,char*) ;
 int skip_whitespace (char*) ;
 char* strdup (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static enum rtsp_result rtsp_handle(stream_t *access, bool *interrupted) {
    access_sys_t *sys = access->p_sys;
    uint8_t buffer[512];
    int rtsp_result = 0;
    bool have_header = 0;
    size_t content_length = 0;
    size_t read = 0;
    char *in, *val;


    while (!have_header) {
        in = net_readln_timeout((vlc_object_t*)access, sys->tcp_sock, 5000,
                interrupted);
        if (in == ((void*)0))
            break;

        if (strncmp(in, "RTSP/1.0 ", 9) == 0) {
            rtsp_result = atoi(in + 9);
        } else if (strncmp(in, "Content-Base:", 13) == 0) {
            free(sys->content_base);

            val = in + 13;
            skip_whitespace(val);

            sys->content_base = strdup(val);
        } else if (strncmp(in, "Content-Length:", 15) == 0) {
            val = in + 16;
            skip_whitespace(val);

            content_length = atoi(val);
        } else if (strncmp("Session:", in, 8) == 0) {
            val = in + 8;
            skip_whitespace(val);

            parse_session(val, sys->session_id, 64, &sys->keepalive_interval);
        } else if (strncmp("Transport:", in, 10) == 0) {
            val = in + 10;
            skip_whitespace(val);

            if (parse_transport(access, val) != 0) {
                rtsp_result = VLC_EGENERIC;
                break;
            }
        } else if (strncmp("com.ses.streamID:", in, 17) == 0) {
            val = in + 17;
            skip_whitespace(val);

            sys->stream_id = atoi(val);
        } else if (in[0] == '\0') {
            have_header = 1;
        }

        free(in);
    }


    while (content_length > 0 &&
            (read = net_Read(access, sys->tcp_sock, buffer, __MIN(sizeof(buffer), content_length))))
        content_length -= read;

    return rtsp_result;
}
