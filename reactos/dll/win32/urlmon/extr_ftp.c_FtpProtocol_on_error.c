
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Protocol ;
typedef int DWORD ;


 int FIXME (char*,int *,int ) ;

__attribute__((used)) static void FtpProtocol_on_error(Protocol *prot, DWORD error)
{
    FIXME("(%p) %d - stub\n", prot, error);
}
