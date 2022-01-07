
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int server_address; } ;
typedef TYPE_1__ NTPStatusInfo ;


 int mfree (int ) ;

__attribute__((used)) static void ntp_status_info_clear(NTPStatusInfo *p) {
        p->server_address = mfree(p->server_address);
}
