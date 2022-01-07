
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BSTR ;


 int SysFreeString (int ) ;

__attribute__((used)) static void free_bstr_array( BSTR *strings, DWORD count )
{
    while (count--)
        SysFreeString( *(strings++) );
}
