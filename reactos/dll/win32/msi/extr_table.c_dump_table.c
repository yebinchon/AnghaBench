
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_table ;
typedef int WCHAR ;
typedef int USHORT ;
typedef int UINT ;


 int MESSAGE (char*,int const,int ) ;
 int debugstr_wn (int const*,int) ;
 int * msi_string_lookup (int const*,int const,int*) ;

__attribute__((used)) static void dump_table( const string_table *st, const USHORT *rawdata, UINT rawsize )
{
    UINT i;
    for (i = 0; i < rawsize / 2; i++)
    {
        int len;
        const WCHAR *sval = msi_string_lookup( st, rawdata[i], &len );
        MESSAGE(" %04x %s\n", rawdata[i], debugstr_wn(sval, len) );
    }
}
