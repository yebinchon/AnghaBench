
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSIRECORD ;
typedef int MSIPACKAGE ;
typedef int * LPWSTR ;
typedef scalar_t__ LPCWSTR ;


 scalar_t__ MSI_RecordGetString (int *,int) ;
 int deformat_string (int *,scalar_t__,int **) ;

__attribute__((used)) static LPWSTR msi_get_deformatted_field( MSIPACKAGE *package, MSIRECORD *rec, int field )
{
    LPCWSTR str = MSI_RecordGetString( rec, field );
    LPWSTR ret = ((void*)0);

    if (str)
        deformat_string( package, str, &ret );
    return ret;
}
