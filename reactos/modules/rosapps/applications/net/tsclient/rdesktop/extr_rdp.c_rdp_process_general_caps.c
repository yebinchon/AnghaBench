
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_3__ {int use_rdp5; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 int False ;
 int in_uint16_le (int ,int ) ;
 int in_uint8s (int ,int) ;

__attribute__((used)) static void
rdp_process_general_caps(RDPCLIENT * This, STREAM s)
{
 uint16 pad2octetsB;

 in_uint8s(s, 10);
 in_uint16_le(s, pad2octetsB);

 if (!pad2octetsB)
  This->use_rdp5 = False;
}
