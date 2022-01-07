
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int protocol; } ;
typedef TYPE_1__ stgmed_buf_t ;
typedef int buf ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ IInternetProtocolEx_Read (int ,int *,int,int *) ;
 scalar_t__ S_OK ;

__attribute__((used)) static void read_protocol_data(stgmed_buf_t *stgmed_buf)
{
    BYTE buf[8192];
    DWORD read;
    HRESULT hres;

    do hres = IInternetProtocolEx_Read(stgmed_buf->protocol, buf, sizeof(buf), &read);
    while(hres == S_OK);
}
