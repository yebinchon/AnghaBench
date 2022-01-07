
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ HANDLE ;


 int ASSERT (int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NtClose (scalar_t__) ;

VOID closeTcpFile( HANDLE h )
{
    ASSERT(h != INVALID_HANDLE_VALUE);

    NtClose( h );
}
