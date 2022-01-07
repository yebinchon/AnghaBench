
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint16_t ;
struct rist_flow {int dummy; } ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_8__ {int b_ismulticast; int receiver_name; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
typedef size_t int8_t ;







 int RTCP_SDES_SIZE ;
 int memcmp (size_t*,int ,size_t) ;
 int memcpy (int ,size_t*,size_t) ;
 int msg_Err (TYPE_1__*,char*,size_t,...) ;
 int msg_Info (TYPE_1__*,char*,int ) ;
 int process_nack (TYPE_1__*,size_t,size_t,struct rist_flow*,size_t*) ;
 size_t rtcp_get_length (size_t*) ;
 size_t rtcp_get_pt (size_t*) ;
 size_t rtcp_sdes_get_name_length (size_t*) ;
 int rtp_check_hdr (size_t*) ;

__attribute__((used)) static void rist_rtcp_recv(sout_access_out_t *p_access, struct rist_flow *flow, uint8_t *pkt_raw,
    size_t len)
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    uint8_t *pkt = pkt_raw;
    uint8_t ptype;
    uint16_t processed_bytes = 0;
    uint16_t records;

    while (processed_bytes < len) {
        pkt = pkt_raw + processed_bytes;

        uint16_t bytes_left = len - processed_bytes + 1;
        if ( bytes_left < 4 )
        {

            msg_Err(p_access, "Rist rtcp packet must have at least 4 bytes, we have %d",
                bytes_left);
            return;
        }
        else if (!rtp_check_hdr(pkt))
        {

            msg_Err(p_access, "Malformed feedback packet starting with %02x, ignoring.", pkt[0]);
            return;
        }

        ptype = rtcp_get_pt(pkt);
        records = rtcp_get_length(pkt);
        uint16_t bytes = (uint16_t)(4 * (1 + records));
        if (bytes > bytes_left)
        {

            msg_Err(p_access, "Malformed feedback packet, wrong len %d, expecting %u bytes in the" " packet, got a buffer of %u bytes. ptype = %d", rtcp_get_length(pkt), bytes,

                bytes_left, ptype);
            return;
        }

        switch(ptype) {
            case 130:
            case 131:
                process_nack(p_access, ptype, records, flow, pkt);
                break;

            case 132:




                break;

            case 129:
                {
                    if (p_sys->b_ismulticast == 0)
                    {
                        int8_t name_length = rtcp_sdes_get_name_length(pkt);
                        if (name_length > bytes_left)
                        {

                            msg_Err(p_access, "Malformed SDES packet, wrong cname len %u, got a " "buffer of %u bytes.", name_length, bytes_left);

                            return;
                        }
                        if (memcmp(pkt + RTCP_SDES_SIZE, p_sys->receiver_name, name_length) != 0)
                        {
                            memcpy(p_sys->receiver_name, pkt + RTCP_SDES_SIZE, name_length);
                            msg_Info(p_access, "Receiver name: %s", p_sys->receiver_name);
                        }
                    }
                }
                break;

            case 128:
                break;

            default:
                msg_Err(p_access, "   Unrecognized RTCP packet with PTYPE=%02x!!", ptype);
        }
        processed_bytes += bytes;
    }
}
