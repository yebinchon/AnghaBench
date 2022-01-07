
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mcs_userid; } ;
typedef TYPE_1__ RDPCLIENT ;


 int iso_reset_state (TYPE_1__*) ;

void
mcs_reset_state(RDPCLIENT * This)
{
 This->mcs_userid = 0;
 iso_reset_state(This);
}
