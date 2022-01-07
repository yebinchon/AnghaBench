
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ USHORT ;
struct TYPE_3__ {scalar_t__ Length; int * Buffer; } ;
typedef int * PWCHAR ;
typedef int PSAM_DB_OBJECT ;
typedef TYPE_1__* PRPC_UNICODE_STRING ;
typedef int NTSTATUS ;
typedef int LPWSTR ;


 int REG_SZ ;
 int SampSetObjectAttribute (int ,int ,int ,int *,scalar_t__) ;

NTSTATUS
SampSetObjectAttributeString(PSAM_DB_OBJECT DbObject,
                             LPWSTR AttributeName,
                             PRPC_UNICODE_STRING String)
{
    PWCHAR Buffer = ((void*)0);
    USHORT Length = 0;

    if ((String != ((void*)0)) && (String->Buffer != ((void*)0)))
    {
        Buffer = String->Buffer;
        Length = String->Length + sizeof(WCHAR);
    }

    return SampSetObjectAttribute(DbObject,
                                  AttributeName,
                                  REG_SZ,
                                  Buffer,
                                  Length);
}
