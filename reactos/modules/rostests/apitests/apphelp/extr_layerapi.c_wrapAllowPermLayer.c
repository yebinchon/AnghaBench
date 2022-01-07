
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int pAllowPermLayer (int *) ;

BOOL wrapAllowPermLayer(const char* str)
{
    WCHAR buf[100];
    MultiByteToWideChar(CP_ACP, 0, str, -1, buf, 100);
    return pAllowPermLayer(buf);
}
