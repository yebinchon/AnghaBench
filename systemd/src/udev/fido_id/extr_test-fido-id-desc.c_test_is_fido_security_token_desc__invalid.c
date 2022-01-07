
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int INVALID_HID_DESC_5 ;
typedef int INVALID_HID_DESC_4 ;
typedef int INVALID_HID_DESC_3 ;
typedef int INVALID_HID_DESC_2 ;
typedef int INVALID_HID_DESC_1 ;


 int assert_se (int) ;
 scalar_t__ is_fido_security_token_desc (int const*,int) ;

__attribute__((used)) static void test_is_fido_security_token_desc__invalid(void) {

        static const uint8_t INVALID_HID_DESC_1[] = { 0x01 };
        assert_se(is_fido_security_token_desc(INVALID_HID_DESC_1, sizeof(INVALID_HID_DESC_1)) < 0);


        static const uint8_t INVALID_HID_DESC_2[] = { 0x02, 0x01 };
        assert_se(is_fido_security_token_desc(INVALID_HID_DESC_2, sizeof(INVALID_HID_DESC_2)) < 0);


        static const uint8_t INVALID_HID_DESC_3[] = { 0x03, 0x01, 0x02, 0x03 };
        assert_se(is_fido_security_token_desc(INVALID_HID_DESC_3, sizeof(INVALID_HID_DESC_3)) < 0);


        static const uint8_t INVALID_HID_DESC_4[] = { 0xfe };
        assert_se(is_fido_security_token_desc(INVALID_HID_DESC_4, sizeof(INVALID_HID_DESC_4)) < 0);


        static const uint8_t INVALID_HID_DESC_5[] = { 0x07, 0x01, 0x02, 0x03, 0x04 };
        assert_se(is_fido_security_token_desc(INVALID_HID_DESC_5, sizeof(INVALID_HID_DESC_5)) < 0);
}
