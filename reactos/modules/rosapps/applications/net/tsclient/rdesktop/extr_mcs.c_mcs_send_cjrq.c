
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_5__ {int mcs_userid; } ;
typedef int * STREAM ;
typedef TYPE_1__ RDPCLIENT ;
typedef int BOOL ;


 int DEBUG_RDP5 (char*) ;
 int False ;
 int MCS_CJRQ ;
 int * iso_init (TYPE_1__*,int) ;
 int iso_send (TYPE_1__*,int *) ;
 int out_uint16_be (int *,int ) ;
 int out_uint8 (int *,int) ;
 int s_mark_end (int *) ;

__attribute__((used)) static BOOL
mcs_send_cjrq(RDPCLIENT * This, uint16 chanid)
{
 STREAM s;

 DEBUG_RDP5(("Sending CJRQ for channel #%d\n", chanid));

 s = iso_init(This, 5);

 if(s == ((void*)0))
  return False;

 out_uint8(s, (MCS_CJRQ << 2));
 out_uint16_be(s, This->mcs_userid);
 out_uint16_be(s, chanid);

 s_mark_end(s);
 return iso_send(This, s);
}
