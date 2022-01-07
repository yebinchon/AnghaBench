
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int DWORD ;


 int FALSE ;
 int decodeBase64WithLenFmt (int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static void decodeBase64WithFmt(LPCSTR str, DWORD fmt, LPCSTR expected, int le)
{
    decodeBase64WithLenFmt(str, 0, fmt, expected, le, FALSE);
}
