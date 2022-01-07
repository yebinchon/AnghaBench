
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sink ;
typedef int HRESULT ;
typedef int DWORD ;


 int CONNECT_E_NOCONNECTION ;
 int S_OK ;
 int free_sink (int *) ;
 int * remove_Cookie (int ) ;

HRESULT unadvise_sink(DWORD cookie)
{
    Sink *sink;

    sink = remove_Cookie(cookie);
    if (!sink)
        return CONNECT_E_NOCONNECTION;

    free_sink(sink);
    return S_OK;
}
