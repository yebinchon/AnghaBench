
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;


 int CRYPT_STRING_BASE64 ;
 int FALSE ;
 int decodeBase64WithLenFmt (int ,int,int ,int ,int,int ) ;

__attribute__((used)) static void decodeBase64WithLen(LPCSTR str, int len, LPCSTR expected, int le)
{
    decodeBase64WithLenFmt(str, len, CRYPT_STRING_BASE64, expected, le, FALSE);
}
