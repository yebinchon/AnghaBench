
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REGSAM ;
typedef int LPCSTR ;
typedef int LONG ;
typedef int HKEY ;


 int RegDeleteKeyA (int ,int ) ;
 int pRegDeleteKeyExA (int ,int ,int ,int ) ;

__attribute__((used)) static LONG delete_key_portable( HKEY key, LPCSTR subkey, REGSAM access )
{
    if (pRegDeleteKeyExA)
        return pRegDeleteKeyExA( key, subkey, access, 0 );
    return RegDeleteKeyA( key, subkey );
}
