
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int STREAM ;
typedef int RDPCLIENT ;







 int in_uint8 (int ,int) ;
 int in_uint8s (int ,int) ;
 int licence_process_authreq (int *,int ) ;
 int licence_process_demand (int *,int ) ;
 int licence_process_issue (int *,int ) ;
 int unimpl (char*,int) ;

void
licence_process(RDPCLIENT * This, STREAM s)
{
 uint8 tag;

 in_uint8(s, tag);
 in_uint8s(s, 3);

 switch (tag)
 {
  case 131:
   licence_process_demand(This, s);
   break;

  case 132:
   licence_process_authreq(This, s);
   break;

  case 130:
   licence_process_issue(This, s);
   break;

  case 129:
  case 128:
   break;

  default:
   unimpl("licence tag 0x%x\n", tag);
 }
}
