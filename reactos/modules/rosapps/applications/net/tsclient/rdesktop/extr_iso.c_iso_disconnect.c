
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;
typedef int BOOL ;


 int ISO_PDU_DR ;
 int iso_send_msg (int *,int ) ;
 int tcp_disconnect (int *) ;

BOOL
iso_disconnect(RDPCLIENT * This)
{
 iso_send_msg(This, ISO_PDU_DR);
 return tcp_disconnect(This);
}
