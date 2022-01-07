
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int EINVAL ;
 int FIDO_FULL_USAGE_CTAPHID ;
 int const HID_RPTDESC_FIRST_BYTE_LONG_ITEM ;
 int HID_RPTDESC_TAG_USAGE ;
 int HID_RPTDESC_TAG_USAGE_PAGE ;
 int HID_RPTDESC_TYPE_GLOBAL ;
 int HID_RPTDESC_TYPE_LOCAL ;

int is_fido_security_token_desc(const uint8_t *desc, size_t desc_len) {
        uint32_t usage = 0;

        for (size_t pos = 0; pos < desc_len; ) {
                uint8_t tag, type, size_code;
                size_t size;
                uint32_t value;


                if (desc[pos] == HID_RPTDESC_FIRST_BYTE_LONG_ITEM) {




                        if (pos + 1 >= desc_len)
                                return -EINVAL;
                        pos += desc[pos + 1] + 3;
                        continue;
                }


                tag = desc[pos] >> 4;
                type = (desc[pos] >> 2) & 0x3;
                size_code = desc[pos] & 0x3;



                size = size_code < 3 ? size_code : 4;

                pos++;


                if (pos + size > desc_len)
                        return -EINVAL;
                value = 0;
                for (size_t i = 0; i < size; i++)
                        value |= (uint32_t) desc[pos + i] << (8 * i);

                pos += size;

                if (type == HID_RPTDESC_TYPE_GLOBAL && tag == HID_RPTDESC_TAG_USAGE_PAGE) {

                        if (size > 2)
                                return -EINVAL;

                        usage = (value & 0x0000ffffu) << 16;
                }

                if (type == HID_RPTDESC_TYPE_LOCAL && tag == HID_RPTDESC_TAG_USAGE) {


                        if (size == 4)
                                usage = value;
                        else
                                usage = (usage & 0xffff0000u) | (value & 0x0000ffffu);
                        if (usage == FIDO_FULL_USAGE_CTAPHID)
                                return 1;
                }
        }

        return 0;
}
