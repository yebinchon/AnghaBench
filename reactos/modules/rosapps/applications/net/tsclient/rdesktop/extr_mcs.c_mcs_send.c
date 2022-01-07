
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int MCS_GLOBAL_CHANNEL ;
 int mcs_send_to_channel (int *,int ,int ) ;

BOOL
mcs_send(RDPCLIENT * This, STREAM s)
{
 return mcs_send_to_channel(This, s, MCS_GLOBAL_CHANNEL);
}
