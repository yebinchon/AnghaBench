
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 int iso_disconnect (int *) ;

void
mcs_disconnect(RDPCLIENT * This)
{
 iso_disconnect(This);
}
