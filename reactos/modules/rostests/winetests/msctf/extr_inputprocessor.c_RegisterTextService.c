
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFCLSID ;
typedef int LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int ClassFactory_Constructor (int ,int *) ;
 int CoRegisterClassObject (int ,int *,int ,int ,int *) ;
 int REGCLS_MULTIPLEUSE ;
 int TextService_Constructor ;
 scalar_t__ cf ;
 int regid ;

__attribute__((used)) static HRESULT RegisterTextService(REFCLSID rclsid)
{
    ClassFactory_Constructor( TextService_Constructor ,(LPVOID*)&cf);
    return CoRegisterClassObject(rclsid, (IUnknown*) cf, CLSCTX_INPROC_SERVER, REGCLS_MULTIPLEUSE, &regid);
}
