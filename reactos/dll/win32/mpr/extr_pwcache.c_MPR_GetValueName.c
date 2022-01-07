
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef scalar_t__* LPSTR ;
typedef int* LPCSTR ;
typedef int DWORD ;
typedef int BYTE ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,scalar_t__*) ;
 scalar_t__ hex (int) ;
 int sprintf (scalar_t__*,char*,int) ;

__attribute__((used)) static LPSTR MPR_GetValueName( LPCSTR pbResource, WORD cbResource, BYTE nType )
{
    LPSTR name;
    DWORD i;

    name = HeapAlloc( GetProcessHeap(), 0, 6+cbResource*2 );
    if( !name ) return ((void*)0);

    sprintf( name, "X-%02X-", nType );
    for(i=0; i<cbResource; i++)
    {
        name[5+i*2]=hex((pbResource[i]&0xf0)>>4);
        name[6+i*2]=hex(pbResource[i]&0x0f);
    }
    name[5+i*2]=0;
    TRACE( "Value is %s\n", name );
    return name;
}
