
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int MCS_GLOBAL_CHANNEL ;
 int sec_send_to_channel (int *,int ,int ,int ) ;

BOOL
sec_send(RDPCLIENT * This, STREAM s, uint32 flags)
{
 return sec_send_to_channel(This, s, flags, MCS_GLOBAL_CHANNEL);
}
