
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int guid ;
typedef int WCHAR ;
typedef int UINT32 ;
struct TYPE_4__ {int Data1; } ;
typedef TYPE_1__ GUID ;


 int RpcStringFreeW (int **) ;
 int UuidToStringW (TYPE_1__*,int **) ;
 int * heap_strdupW (int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static WCHAR *get_settingid( UINT32 index )
{
    GUID guid;
    WCHAR *ret, *str;
    memset( &guid, 0, sizeof(guid) );
    guid.Data1 = index;
    UuidToStringW( &guid, &str );
    ret = heap_strdupW( str );
    RpcStringFreeW( &str );
    return ret;
}
