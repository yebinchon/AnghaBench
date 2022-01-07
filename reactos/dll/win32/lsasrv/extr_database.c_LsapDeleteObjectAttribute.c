
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int KeyHandle; } ;
typedef TYPE_1__* PLSA_DB_OBJECT ;
typedef int NTSTATUS ;
typedef int LPWSTR ;


 int LsapRegDeleteSubKey (int ,int ) ;

NTSTATUS
LsapDeleteObjectAttribute(PLSA_DB_OBJECT DbObject,
                          LPWSTR AttributeName)
{
    return LsapRegDeleteSubKey(DbObject->KeyHandle,
                               AttributeName);
}
