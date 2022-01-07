
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int buffer; } ;
typedef TYPE_1__ Server ;


 int dummy_server_init (TYPE_1__*,int const*,size_t) ;
 int process_audit_string (TYPE_1__*,int ,int ,size_t) ;
 int server_done (TYPE_1__*) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
        Server s;

        dummy_server_init(&s, data, size);
        process_audit_string(&s, 0, s.buffer, size);
        server_done(&s);

        return 0;
}
