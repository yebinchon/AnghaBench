
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct sockaddr_storage {int dummy; } ;
typedef int sockaddr ;
struct rist_flow {char peer_sockaddr; int reset; int peer_socklen; } ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {int b_sendnacks; char* sender_name; int b_ismulticast; int lock; } ;
typedef TYPE_2__ stream_sys_t ;
typedef int socklen_t ;
typedef int new_sender_name ;
typedef size_t int8_t ;


 int MAX_CNAME ;





 int RTCP_SDES_SIZE ;
 int memcmp (char*,char*,size_t) ;
 int memcpy (char*,int*,size_t) ;
 int memset (char*,int ,int) ;
 int msg_Err (TYPE_1__*,char*,int,...) ;
 int msg_Info (TYPE_1__*,char*,char*,...) ;
 int print_sockaddr_info (TYPE_1__*,int*) ;
 int print_sockaddr_info_change (TYPE_1__*,int*,int*) ;
 size_t rtcp_get_length (int*) ;
 int rtcp_get_pt (int*) ;
 size_t rtcp_sdes_get_name_length (int*) ;
 int rtp_check_hdr (int*) ;
 int sockaddr_cmp (int*,int*) ;
 int strcmp (char*,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void rtcp_input(stream_t *p_access, struct rist_flow *flow, uint8_t *buf_in, size_t len,
    struct sockaddr *peer, socklen_t slen)
{
    stream_sys_t *p_sys = p_access->p_sys;
    uint8_t ptype;
    uint16_t processed_bytes = 0;
    uint16_t records;
    char new_sender_name[MAX_CNAME];
    uint8_t *buf;

    while (processed_bytes < len) {
        buf = buf_in + processed_bytes;

        uint16_t bytes_left = len - processed_bytes + 1;
        if ( bytes_left < 4 )
        {

            msg_Err(p_access, "Rist rtcp packet must have at least 4 bytes, we have %d",
                bytes_left);
            return;
        }
        else if (!rtp_check_hdr(buf))
        {

            msg_Err(p_access, "Malformed rtcp packet starting with %02x, ignoring.", buf[0]);
            return;
        }

        ptype = rtcp_get_pt(buf);
        records = rtcp_get_length(buf);
        uint16_t bytes = (uint16_t)(4 * (1 + records));
        if (bytes > bytes_left)
        {

            msg_Err(p_access, "Malformed rtcp packet, wrong len %d, expecting %u bytes in the " "packet, got a buffer of %u bytes.", rtcp_get_length(buf), bytes, bytes_left);

            return;
        }

        switch(ptype) {
            case 130:
            case 131:
                break;

            case 132:
                break;

            case 129:
                {
                    if (p_sys->b_sendnacks == 0)
                        p_sys->b_sendnacks = 1;
                    if (p_sys->b_ismulticast)
                        return;

                    int8_t name_length = rtcp_sdes_get_name_length(buf);
                    if (name_length > bytes_left || name_length <= 0 ||
                        (size_t)name_length > sizeof(new_sender_name))
                    {

                        msg_Err(p_access, "Malformed SDES packet, wrong cname len %d, got a " "buffer of %u bytes.", name_length, bytes_left);

                        return;
                    }
                    bool ip_port_changed = 0;
                    if (sockaddr_cmp((struct sockaddr *)&flow->peer_sockaddr, peer) != 0)
                    {
                        ip_port_changed = 1;
                        if(flow->peer_socklen > 0)
                            print_sockaddr_info_change(p_access,
                                (struct sockaddr *)&flow->peer_sockaddr, peer);
                        else
                            print_sockaddr_info(p_access, peer);
                        vlc_mutex_lock( &p_sys->lock );
                        memcpy(&flow->peer_sockaddr, peer, sizeof(struct sockaddr_storage));
                        flow->peer_socklen = slen;
                        vlc_mutex_unlock( &p_sys->lock );
                    }


                    bool peer_name_changed = 0;
                    memset(new_sender_name, 0, MAX_CNAME);
                    memcpy(new_sender_name, buf + RTCP_SDES_SIZE, name_length);
                    if (memcmp(new_sender_name, p_sys->sender_name, name_length) != 0)
                    {
                        peer_name_changed = 1;
                        if (strcmp(p_sys->sender_name, "") == 0)
                            msg_Info(p_access, "Peer Name: %s", new_sender_name);
                        else
                            msg_Info(p_access, "Peer Name change detected: old Name: %s, new " "Name: %s", p_sys->sender_name, new_sender_name);

                        memset(p_sys->sender_name, 0, MAX_CNAME);
                        memcpy(p_sys->sender_name, buf + RTCP_SDES_SIZE, name_length);
                    }


                    if (peer_name_changed || ip_port_changed)
                    {

                        flow->reset = 1;
                    }
                }
                break;

            case 128:
                if (p_sys->b_sendnacks == 0)
                    p_sys->b_sendnacks = 1;
                if (p_sys->b_ismulticast)
                        return;
                break;

            default:
                msg_Err(p_access, "   Unrecognized RTCP packet with PTYPE=%02x!!", ptype);
        }
        processed_bytes += (4 * (1 + records));
    }
}
