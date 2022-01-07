
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int* p_buffer; } ;
typedef TYPE_1__ block_t ;


 TYPE_1__* block_Alloc (unsigned int) ;
 scalar_t__ memcmp (int const*,int*,int) ;
 int msg_Err (int *,char*,int,...) ;
 int parity (int) ;

block_t *vanc_to_cc(vlc_object_t *obj, uint16_t *buf, size_t words)
{
    if (words < 3) {
        msg_Err(obj, "VANC line too small (%zu words)", words);
        return ((void*)0);
    }

    static const uint8_t vanc_header[6] = { 0x00, 0x00, 0xff, 0x03, 0xff, 0x03 };
    if (memcmp(vanc_header, buf, 3*2)) {

        return ((void*)0);
    }

    size_t len = (buf[5] & 0xff) + 6 + 1;
    if (len > words) {
        msg_Err(obj, "Data Count (%zu) > line length (%zu)", len, words);
        return ((void*)0);
    }

    uint16_t vanc_sum = 0;
    for (size_t i = 3; i < len - 1; i++) {
        uint16_t v = buf[i];
        int np = v >> 8;
        int p = parity(v & 0xff);
        if ((!!p ^ !!(v & 0x100)) || (np != 1 && np != 2)) {
            msg_Err(obj, "Parity incorrect for word %zu", i);
            return ((void*)0);
        }
        vanc_sum += v;
        vanc_sum &= 0x1ff;
        buf[i] &= 0xff;
    }

    vanc_sum |= ((~vanc_sum & 0x100) << 1);
    if (buf[len - 1] != vanc_sum) {
        msg_Err(obj, "VANC checksum incorrect: 0x%.4x != 0x%.4x", vanc_sum, buf[len-1]);
        return ((void*)0);
    }

    if (buf[3] != 0x61 || buf[4] != 0x01 ) {


        return ((void*)0);
    }


    uint16_t *cdp = &buf[6];
    if (cdp[0] != 0x96 || cdp[1] != 0x69) {
        msg_Err(obj, "Invalid CDP header 0x%.2x 0x%.2x", cdp[0], cdp[1]);
        return ((void*)0);
    }

    len -= 7;

    if (cdp[2] != len) {
        msg_Err(obj, "CDP len %d != %zu", cdp[2], len);
        return ((void*)0);
    }

    uint8_t cdp_sum = 0;
    for (size_t i = 0; i < len - 1; i++)
        cdp_sum += cdp[i];
    cdp_sum = cdp_sum ? 256 - cdp_sum : 0;
    if (cdp[len - 1] != cdp_sum) {
        msg_Err(obj, "CDP checksum invalid 0x%.4x != 0x%.4x", cdp_sum, cdp[len-1]);
        return ((void*)0);
    }

    uint8_t rate = cdp[3];
    if (!(rate & 0x0f)) {
        msg_Err(obj, "CDP frame rate invalid (0x%.2x)", rate);
        return ((void*)0);
    }
    rate >>= 4;
    if (rate > 8) {
        msg_Err(obj, "CDP frame rate invalid (0x%.2x)", rate);
        return ((void*)0);
    }

    if (!(cdp[4] & 0x43)) {
        msg_Err(obj, "CDP flags invalid (0x%.2x)", cdp[4]);
        return ((void*)0);
    }

    uint16_t hdr = (cdp[5] << 8) | cdp[6];
    if (cdp[7] != 0x72) {
        msg_Err(obj, "Invalid ccdata_id 0x%.2x", cdp[7]);
        return ((void*)0);
    }

    unsigned cc_count = cdp[8];
    if (!(cc_count & 0xe0)) {
        msg_Err(obj, "Invalid cc_count 0x%.2x", cc_count);
        return ((void*)0);
    }

    cc_count &= 0x1f;
    if ((len - 13) < cc_count * 3) {
        msg_Err(obj, "Invalid cc_count %d (> %zu)", cc_count * 3, len - 13);
        return ((void*)0);
    }

    if (cdp[len - 4] != 0x74) {
        msg_Err(obj, "Invalid footer id 0x%.2x", cdp[len-4]);
        return ((void*)0);
    }

    uint16_t ftr = (cdp[len - 3] << 8) | cdp[len - 2];
    if (ftr != hdr) {
        msg_Err(obj, "Header 0x%.4x != Footer 0x%.4x", hdr, ftr);
        return ((void*)0);
    }

    block_t *cc = block_Alloc(cc_count * 3);

    for (size_t i = 0; i < cc_count; i++) {
        cc->p_buffer[3*i+0] = cdp[9 + 3*i+0] ;
        cc->p_buffer[3*i+1] = cdp[9 + 3*i+1];
        cc->p_buffer[3*i+2] = cdp[9 + 3*i+2];
    }

    return cc;
}
