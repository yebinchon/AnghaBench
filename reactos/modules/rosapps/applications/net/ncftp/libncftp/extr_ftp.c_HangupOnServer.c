
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;


 int CloseControlConnection (int const) ;
 int CloseDataConnection (int const) ;

void
HangupOnServer(const FTPCIPtr cip)
{




 CloseControlConnection(cip);
 CloseDataConnection(cip);
}
