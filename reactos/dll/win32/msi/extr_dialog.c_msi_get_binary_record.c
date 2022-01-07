
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int MSIRECORD ;
typedef int MSIDATABASE ;
typedef int LPCWSTR ;


 int * MSI_QueryGetRecord (int *,char const*,int ) ;

__attribute__((used)) static MSIRECORD *msi_get_binary_record( MSIDATABASE *db, LPCWSTR name )
{
    static const WCHAR query[] = {
        's','e','l','e','c','t',' ','*',' ',
        'f','r','o','m',' ','B','i','n','a','r','y',' ',
        'w','h','e','r','e',' ',
            '`','N','a','m','e','`',' ','=',' ','\'','%','s','\'',0
    };

    return MSI_QueryGetRecord( db, query, name );
}
