
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int fuzz_journald_processing_function (int const*,size_t,int ) ;
 int server_process_syslog_message ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
        fuzz_journald_processing_function(data, size, server_process_syslog_message);
        return 0;
}
