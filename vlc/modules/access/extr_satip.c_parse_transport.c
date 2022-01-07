
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {char* udp_address; int udp_port; } ;
typedef TYPE_2__ access_sys_t ;


 int UDP_ADDRESS_LEN ;
 int VLC_EGENERIC ;
 int __MIN (int ,int) ;
 int memcpy (char*,char*,int ) ;
 int memset (char*,int,int) ;
 int parse_port (char*,int *) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static int parse_transport(stream_t *access, char *request_line) {
    access_sys_t *sys = access->p_sys;
    char *state;
    char *tok;
    int err;

    tok = strtok_r(request_line, ";", &state);
    if (tok == ((void*)0) || strncmp(tok, "RTP/AVP", 7) != 0)
        return VLC_EGENERIC;

    tok = strtok_r(((void*)0), ";", &state);
    if (tok == ((void*)0) || strncmp(tok, "multicast", 9) != 0)
        return 0;

    while ((tok = strtok_r(((void*)0), ";", &state)) != ((void*)0)) {
        if (strncmp(tok, "destination=", 12) == 0) {
            memcpy(sys->udp_address, tok + 12, __MIN(strlen(tok + 12), UDP_ADDRESS_LEN - 1));
        } else if (strncmp(tok, "port=", 5) == 0) {
            char port[6];
            char *end;

            memset(port, 0x00, 6);
            memcpy(port, tok + 5, __MIN(strlen(tok + 5), 5));
            if ((end = strstr(port, "-")) != ((void*)0))
                *end = '\0';
            err = parse_port(port, &sys->udp_port);
            if (err)
                return err;
        }
    }

    return 0;
}
