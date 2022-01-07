
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPOVERLAPPED ;
typedef int DWORD ;


 int DPRINT (char*) ;

void
CompleteWaveOverlap(
    DWORD error_code,
    DWORD bytes_transferred,
    LPOVERLAPPED overlapped)
{
    DPRINT("Complete partial wave overlap\n");
}
