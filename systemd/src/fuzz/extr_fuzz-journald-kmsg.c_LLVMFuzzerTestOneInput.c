
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int buffer; } ;
typedef TYPE_1__ Server ;


 int dev_kmsg_record (TYPE_1__*,int ,size_t) ;
 int dummy_server_init (TYPE_1__*,int const*,size_t) ;
 int server_done (TYPE_1__*) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
        Server s;

        if (size == 0)
                return 0;

        dummy_server_init(&s, data, size);
        dev_kmsg_record(&s, s.buffer, size);
        server_done(&s);

        return 0;
}
