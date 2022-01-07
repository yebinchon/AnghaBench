
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int IUnknown ;
typedef int IRpcStubBuffer ;
typedef int IPSFactoryBuffer ;
typedef int HRESULT ;


 int IPSFactoryBuffer_CreateStub (int *,int ,int *,int **) ;
 int ok (int,char*,int ,int ) ;

__attribute__((used)) static IRpcStubBuffer *create_stub(IPSFactoryBuffer *ppsf, REFIID iid, IUnknown *obj, HRESULT expected_result)
{
    IRpcStubBuffer *pstub = ((void*)0);
    HRESULT r;

    r = IPSFactoryBuffer_CreateStub(ppsf, iid, obj, &pstub);
    ok(r == expected_result, "CreateStub returned %08x expected %08x\n", r, expected_result);
    return pstub;
}
