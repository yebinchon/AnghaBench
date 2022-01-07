
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__* PWSTR ;
typedef int PINFCACHE ;
typedef char* PCWSTR ;


 char* InfpGetSubstitutionString (int ,char const*,size_t*,int) ;
 int MAX_INF_STRING_LENGTH ;
 int memcpy (scalar_t__*,char const*,size_t) ;

__attribute__((used)) static size_t
InfpSubstituteString(PINFCACHE Inf,
                     PCWSTR text,
                     PWSTR buffer,
                     size_t size)
{
    const WCHAR *start, *subst, *p;
    size_t len, total = 0;
    int inside = 0;

    if (!buffer) size = MAX_INF_STRING_LENGTH + 1;
    for (p = start = text; *p; p++)
    {
        if (*p != '%') continue;
        inside = !inside;
        if (inside)
        {
            len = (p - start);
            if (len > size - 1) len = size - 1;
            if (buffer) memcpy( buffer + total, start, len * sizeof(WCHAR) );
            total += len;
            size -= len;
            start = p;
        }
        else
        {
            len = (p - start - 1);
            subst = InfpGetSubstitutionString( Inf, start + 1, &len, p[1] == '\\' );
            if (!subst)
            {
                subst = start;
                len = (p - start + 1);
            }
            if (len > size - 1) len = size - 1;
            if (buffer) memcpy( buffer + total, subst, len * sizeof(WCHAR) );
            total += len;
            size -= len;
            start = p + 1;
        }
    }

    if (start != p)
    {
        len = (unsigned int)(p - start);
        if (len > size - 1) len = size - 1;
        if (buffer) memcpy( buffer + total, start, len * sizeof(WCHAR) );
        total += len;
    }
    if (buffer && size) buffer[total] = 0;
    return total;
}
