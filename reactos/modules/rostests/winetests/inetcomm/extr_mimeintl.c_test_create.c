
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IMimeInternational ;
typedef scalar_t__ HRESULT ;


 int IMimeInternational_Release (int *) ;
 scalar_t__ MimeOleGetInternat (int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_create(void)
{
    IMimeInternational *internat, *internat2;
    HRESULT hr;
    ULONG ref;

    hr = MimeOleGetInternat(&internat);
    ok(hr == S_OK, "ret %08x\n", hr);
    hr = MimeOleGetInternat(&internat2);
    ok(hr == S_OK, "ret %08x\n", hr);


    if(internat == internat2)
    {


        ref = IMimeInternational_Release(internat2);
        ok(ref == 2 ||
           ref == 1,
           "got %d\n", ref);

        ref = IMimeInternational_Release(internat);
        ok(ref == 1, "got %d\n", ref);
    }
    else
    {
        ref = IMimeInternational_Release(internat2);
        ok(ref == 0, "got %d\n", ref);

        ref = IMimeInternational_Release(internat);
        ok(ref == 0, "got %d\n", ref);
    }

}
