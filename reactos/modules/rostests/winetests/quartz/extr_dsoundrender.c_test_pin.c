
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPin ;
typedef int IMemInputPin ;


 scalar_t__ E_POINTER ;
 int IID_IMemInputPin ;
 scalar_t__ IMemInputPin_NotifyAllocator (int *,int *,int ) ;
 scalar_t__ IMemInputPin_ReceiveCanBlock (int *) ;
 int IMemInputPin_Release (int *) ;
 int IPin_QueryInterface (int *,int *,void**) ;
 scalar_t__ S_OK ;
 int ok (int,char*) ;

__attribute__((used)) static void test_pin(IPin *pin)
{
    IMemInputPin *mpin = ((void*)0);

    IPin_QueryInterface(pin, &IID_IMemInputPin, (void **)&mpin);

    ok(mpin != ((void*)0), "No IMemInputPin found!\n");
    if (mpin)
    {
        ok(IMemInputPin_ReceiveCanBlock(mpin) == S_OK, "Receive can't block for pin!\n");
        ok(IMemInputPin_NotifyAllocator(mpin, ((void*)0), 0) == E_POINTER, "NotifyAllocator likes a NULL pointer argument\n");
        IMemInputPin_Release(mpin);
    }

}
