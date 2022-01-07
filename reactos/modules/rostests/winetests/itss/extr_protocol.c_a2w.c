
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const WCHAR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int const*,int) ;

__attribute__((used)) static const WCHAR *a2w(const char *str)
{
    static WCHAR bufs[8][128];
    static int i;

    if(!str)
        return ((void*)0);

    i = (i+1) % 8;
    MultiByteToWideChar(CP_ACP, 0, str, -1, bufs[i], 128);
    return bufs[i];
}
