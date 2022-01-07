
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 int rdp_reset_state (int *) ;

__attribute__((used)) static void
rdesktop_reset_state(RDPCLIENT * This)
{
 rdp_reset_state(This);
}
