
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int KeyHandle; } ;
typedef int PULONG ;
typedef TYPE_1__* PSAM_DB_OBJECT ;
typedef int NTSTATUS ;
typedef int LPWSTR ;
typedef int LPVOID ;


 int SampRegQueryValue (int ,int ,int ,int ,int ) ;

NTSTATUS
SampGetObjectAttribute(PSAM_DB_OBJECT DbObject,
                       LPWSTR AttributeName,
                       PULONG AttributeType,
                       LPVOID AttributeData,
                       PULONG AttributeSize)
{
    return SampRegQueryValue(DbObject->KeyHandle,
                             AttributeName,
                             AttributeType,
                             AttributeData,
                             AttributeSize);
}
