
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LONGLONG ;
typedef int CIMTYPE ;
 int ERR (char*,int) ;
 int sprintfW (char*,char const*,int ) ;
 int wsprintfW (char*,char const*,int ) ;

__attribute__((used)) static const WCHAR *format_int( WCHAR *buf, CIMTYPE type, LONGLONG val )
{
    static const WCHAR fmt_signedW[] = {'%','d',0};
    static const WCHAR fmt_unsignedW[] = {'%','u',0};
    static const WCHAR fmt_signed64W[] = {'%','I','6','4','d',0};
    static const WCHAR fmt_unsigned64W[] = {'%','I','6','4','u',0};

    switch (type)
    {
    case 132:
    case 135:
    case 134:
        sprintfW( buf, fmt_signedW, val );
        return buf;

    case 128:
    case 131:
    case 130:
        sprintfW( buf, fmt_unsignedW, val );
        return buf;

    case 133:
        wsprintfW( buf, fmt_signed64W, val );
        return buf;

    case 129:
        wsprintfW( buf, fmt_unsigned64W, val );
        return buf;

    default:
        ERR( "unhandled type %u\n", type );
        return ((void*)0);
    }
}
