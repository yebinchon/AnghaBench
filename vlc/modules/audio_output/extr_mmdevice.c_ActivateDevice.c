
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int PROPVARIANT ;
typedef int IMMDevice ;
typedef int HRESULT ;


 int CLSCTX_ALL ;
 int IMMDevice_Activate (int *,int ,int ,int *,void**) ;

__attribute__((used)) static HRESULT ActivateDevice(void *opaque, REFIID iid, PROPVARIANT *actparms,
                              void **restrict pv)
{
    IMMDevice *dev = opaque;
    return IMMDevice_Activate(dev, iid, CLSCTX_ALL, actparms, pv);
}
