
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 int tcp_reset_state (int *) ;

void
iso_reset_state(RDPCLIENT * This)
{
 tcp_reset_state(This);
}
