
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int server_rdp_version; int server_depth; scalar_t__ use_rdp5; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 int DEBUG_RDP5 (char*) ;
 int in_uint16_le (int ,int) ;

__attribute__((used)) static void
sec_process_srv_info(RDPCLIENT * This, STREAM s)
{
 in_uint16_le(s, This->server_rdp_version);
 DEBUG_RDP5(("Server RDP version is %d\n", This->server_rdp_version));
 if (1 == This->server_rdp_version)
 {
  This->use_rdp5 = 0;
  This->server_depth = 8;
 }
}
