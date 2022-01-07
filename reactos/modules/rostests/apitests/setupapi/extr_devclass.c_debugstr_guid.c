
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int guidSTR1 ;
struct TYPE_3__ {int * Data4; int Data3; int Data2; int Data1; } ;
typedef TYPE_1__ GUID ;
typedef int BOOL ;


 int snprintf (char*,int,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static const char *debugstr_guid(const GUID *guid)
{
    static char guidSTR1[39];
    static char guidSTR2[39];
    char* guidSTR;
    static BOOL index;

    if (!guid) return ((void*)0);

    index = !index;
    guidSTR = index ? guidSTR1 : guidSTR2;

    snprintf(guidSTR, sizeof(guidSTR1),
     "{%08lx-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}",
     guid->Data1, guid->Data2, guid->Data3,
     guid->Data4[0], guid->Data4[1], guid->Data4[2], guid->Data4[3],
     guid->Data4[4], guid->Data4[5], guid->Data4[6], guid->Data4[7]);
    return guidSTR;
}
