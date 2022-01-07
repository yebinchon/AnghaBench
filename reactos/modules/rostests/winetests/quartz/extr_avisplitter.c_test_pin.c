
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPin ;
typedef int IMemInputPin ;


 int IID_IMemInputPin ;
 int IMemInputPin_Release (int *) ;
 int IPin_QueryInterface (int *,int *,void**) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_pin(IPin *pin)
{
    IMemInputPin *mpin = ((void*)0);

    IPin_QueryInterface(pin, &IID_IMemInputPin, (void **)&mpin);

    ok(mpin == ((void*)0), "IMemInputPin found!\n");
    if (mpin)
        IMemInputPin_Release(mpin);

}
