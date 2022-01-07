
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int KeyHandle; } ;
typedef TYPE_1__* PSAM_DB_OBJECT ;
typedef int NTSTATUS ;
typedef int LPWSTR ;
typedef int LPVOID ;


 int SampRegSetValue (int ,int ,int ,int ,int ) ;

NTSTATUS
SampSetObjectAttribute(PSAM_DB_OBJECT DbObject,
                       LPWSTR AttributeName,
                       ULONG AttributeType,
                       LPVOID AttributeData,
                       ULONG AttributeSize)
{
    return SampRegSetValue(DbObject->KeyHandle,
                           AttributeName,
                           AttributeType,
                           AttributeData,
                           AttributeSize);
}
