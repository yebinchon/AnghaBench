
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int send_info_set; int send_flinfo; int type_out; int type_send; scalar_t__ use_binary_send; } ;
typedef TYPE_1__ DatumSerializer ;


 int fmgr_info (int ,int *) ;

__attribute__((used)) static inline void
load_send_fn(DatumSerializer *ser)
{
 if (ser->send_info_set)
  return;

 ser->send_info_set = 1;

 if (ser->use_binary_send)
  fmgr_info(ser->type_send, &ser->send_flinfo);
 else
  fmgr_info(ser->type_out, &ser->send_flinfo);
}
