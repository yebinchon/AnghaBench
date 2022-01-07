
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int CoRevokeClassObject (int ) ;
 int regid ;

__attribute__((used)) static HRESULT UnregisterTextService(void)
{
    return CoRevokeClassObject(regid);
}
