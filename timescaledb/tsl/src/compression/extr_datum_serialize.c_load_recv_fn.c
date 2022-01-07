
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recv_info_set; int use_binary_recv; int recv_flinfo; int type_in; int type_recv; } ;
typedef TYPE_1__ DatumDeserializer ;


 int fmgr_info (int ,int *) ;

__attribute__((used)) static inline void
load_recv_fn(DatumDeserializer *des, bool use_binary)
{
 if (des->recv_info_set && des->use_binary_recv == use_binary)
  return;

 des->recv_info_set = 1;
 des->use_binary_recv = use_binary;

 if (des->use_binary_recv)
  fmgr_info(des->type_recv, &des->recv_flinfo);
 else
  fmgr_info(des->type_in, &des->recv_flinfo);
}
