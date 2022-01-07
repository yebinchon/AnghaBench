
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 int mcs_disconnect (int *) ;

void
sec_disconnect(RDPCLIENT * This)
{
 mcs_disconnect(This);
}
