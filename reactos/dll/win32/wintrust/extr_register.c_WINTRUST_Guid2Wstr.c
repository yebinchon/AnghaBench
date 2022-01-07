
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int * Data4; int Data3; int Data2; int Data1; } ;
typedef TYPE_1__ GUID ;


 int wsprintfW (char*,char const*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void WINTRUST_Guid2Wstr(const GUID* pgActionID, WCHAR* GuidString)
{
    static const WCHAR wszFormat[] = {'{','%','0','8','l','X','-','%','0','4','X','-','%','0','4','X','-',
                                      '%','0','2','X','%','0','2','X','-','%','0','2','X','%','0','2','X','%','0','2','X','%','0','2',
                                      'X','%','0','2','X','%','0','2','X','}', 0};

    wsprintfW(GuidString, wszFormat, pgActionID->Data1, pgActionID->Data2, pgActionID->Data3,
        pgActionID->Data4[0], pgActionID->Data4[1], pgActionID->Data4[2], pgActionID->Data4[3],
        pgActionID->Data4[4], pgActionID->Data4[5], pgActionID->Data4[6], pgActionID->Data4[7]);
}
