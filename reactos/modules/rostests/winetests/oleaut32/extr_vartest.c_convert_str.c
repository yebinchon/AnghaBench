
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {int dwInFlags; int cDig; } ;
typedef int OLECHAR ;
typedef TYPE_1__ NUMPARSE ;
typedef int LCID ;
typedef int INT ;
typedef int HRESULT ;
typedef TYPE_1__ BYTE ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int FAILDIG ;
 int LOCALE_NOUSEROVERRIDE ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int ) ;
 int memset (TYPE_1__*,int,int) ;
 int pVarParseNumFromStr (int *,int ,int ,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static HRESULT convert_str( const char *str, INT dig, ULONG flags,
                            NUMPARSE *np, BYTE rgb[128], LCID lcid )
{
    OLECHAR buff[128];
    MultiByteToWideChar( CP_ACP,0, str, -1, buff, ARRAY_SIZE( buff ));
    memset( rgb, FAILDIG, 128 );
    memset( np, 255, sizeof(*np) );
    np->cDig = dig;
    np->dwInFlags = flags;
    return pVarParseNumFromStr( buff, lcid, LOCALE_NOUSEROVERRIDE, np, rgb);
}
