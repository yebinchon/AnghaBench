
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ decrypt_use_count; scalar_t__ encrypt_use_count; } ;
struct TYPE_6__ {TYPE_1__ secure; scalar_t__ server_rdp_version; } ;
typedef TYPE_2__ RDPCLIENT ;


 int mcs_reset_state (TYPE_2__*) ;

void
sec_reset_state(RDPCLIENT * This)
{
 This->server_rdp_version = 0;
 This->secure.encrypt_use_count = 0;
 This->secure.decrypt_use_count = 0;
 mcs_reset_state(This);
}
