
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MsiRecordGetStringA (int ,scalar_t__,int *,int*) ;
 int strcmp (int ,int *) ;

__attribute__((used)) static BOOL check_record( MSIHANDLE rec, UINT field, LPCSTR val )
{
    CHAR buffer[0x20];
    UINT r;
    DWORD sz;

    sz = sizeof buffer;
    r = MsiRecordGetStringA( rec, field, buffer, &sz );
    return (r == ERROR_SUCCESS ) && !strcmp(val, buffer);
}
