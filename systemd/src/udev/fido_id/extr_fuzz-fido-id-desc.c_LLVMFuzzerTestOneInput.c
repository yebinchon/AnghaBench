
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t HID_MAX_DESCRIPTOR_SIZE ;
 int LOG_CRIT ;
 int getenv (char*) ;
 int is_fido_security_token_desc (int const*,size_t) ;
 int log_set_max_level (int ) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {


        if (!getenv("SYSTEMD_LOG_LEVEL"))
                log_set_max_level(LOG_CRIT);

        if (size > HID_MAX_DESCRIPTOR_SIZE)
                return 0;
        (void) is_fido_security_token_desc(data, size);

        return 0;
}
