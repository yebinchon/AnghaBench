
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int * Data4; int Data3; int Data2; int Data1; } ;
typedef TYPE_1__ CLSID ;


 int sprintfW (char*,char const*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void format_clsid( WCHAR *buffer, const CLSID *clsid )
{
    static const WCHAR clsid_formatW[] = {'{','%','0','8','X','-','%','0','4','X','-','%','0','4','X','-',
                                    '%','0','2','X','%','0','2','X','-','%','0','2','X','%','0','2','X',
                                    '%','0','2','X','%','0','2','X','%','0','2','X','%','0','2','X','}',0};

    sprintfW( buffer, clsid_formatW, clsid->Data1, clsid->Data2, clsid->Data3,
              clsid->Data4[0], clsid->Data4[1], clsid->Data4[2], clsid->Data4[3],
              clsid->Data4[4], clsid->Data4[5], clsid->Data4[6], clsid->Data4[7] );

}
