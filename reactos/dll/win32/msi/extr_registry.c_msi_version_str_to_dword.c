
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;


 int MAKELONG (int ,int ) ;
 int MAKEWORD (int ,int ) ;
 int atoiW (scalar_t__) ;
 scalar_t__ strchrW (scalar_t__,char) ;

DWORD msi_version_str_to_dword(LPCWSTR p)
{
    DWORD major, minor = 0, build = 0, version = 0;

    if (!p)
        return version;

    major = atoiW(p);

    p = strchrW(p, '.');
    if (p)
    {
        minor = atoiW(p+1);
        p = strchrW(p+1, '.');
        if (p)
            build = atoiW(p+1);
    }

    return MAKELONG(build, MAKEWORD(minor, major));
}
