
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nspid; void* machine; int server_id; void* exec_path; int exec_argv; scalar_t__ sockaddr_size; int sockaddr; } ;
typedef TYPE_1__ sd_bus ;


 int SD_ID128_NULL ;
 int assert (TYPE_1__*) ;
 void* mfree (void*) ;
 int strv_free (int ) ;
 int zero (int ) ;

__attribute__((used)) static void bus_reset_parsed_address(sd_bus *b) {
        assert(b);

        zero(b->sockaddr);
        b->sockaddr_size = 0;
        b->exec_argv = strv_free(b->exec_argv);
        b->exec_path = mfree(b->exec_path);
        b->server_id = SD_ID128_NULL;
        b->machine = mfree(b->machine);
        b->nspid = 0;
}
