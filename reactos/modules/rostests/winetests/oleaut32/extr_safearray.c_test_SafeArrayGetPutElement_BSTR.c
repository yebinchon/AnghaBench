
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int cbElements; } ;
struct TYPE_8__ {int lLbound; int cElements; } ;
typedef TYPE_1__ SAFEARRAYBOUND ;
typedef TYPE_2__ SAFEARRAY ;
typedef char OLECHAR ;
typedef int LONG ;
typedef scalar_t__ HRESULT ;
typedef int * BSTR ;


 scalar_t__ S_OK ;
 TYPE_2__* SafeArrayCreate (int ,int,TYPE_1__*) ;
 scalar_t__ SafeArrayDestroy (TYPE_2__*) ;
 scalar_t__ SafeArrayGetElement (TYPE_2__*,int*,int **) ;
 scalar_t__ SafeArrayPutElement (TYPE_2__*,int*,int *) ;
 int * SysAllocString (char const*) ;
 int SysFreeString (int *) ;
 scalar_t__ SysStringLen (int *) ;
 int VT_BSTR ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SafeArrayGetPutElement_BSTR(void)
{
  SAFEARRAYBOUND sab;
  LONG indices[1];
  SAFEARRAY *sa;
  HRESULT hres;
  BSTR value = 0, gotvalue;
  const OLECHAR szTest[5] = { 'T','e','s','t','\0' };

  sab.lLbound = 1;
  sab.cElements = 1;

  sa = SafeArrayCreate(VT_BSTR, 1, &sab);
  ok(sa != ((void*)0), "BSTR test couldn't create array\n");
  if (!sa)
    return;

  ok(sa->cbElements == sizeof(BSTR), "BSTR size mismatch\n");

  indices[0] = sab.lLbound;
  value = SysAllocString(szTest);
  ok (value != ((void*)0), "Expected non-NULL\n");
  hres = SafeArrayPutElement(sa, indices, value);
  ok(hres == S_OK, "Failed to put bstr element hres 0x%x\n", hres);
  gotvalue = ((void*)0);
  hres = SafeArrayGetElement(sa, indices, &gotvalue);
  ok(hres == S_OK, "Failed to get bstr element at hres 0x%x\n", hres);
  if (hres == S_OK)
    ok(SysStringLen(value) == SysStringLen(gotvalue), "Got len %d instead of %d\n", SysStringLen(gotvalue), SysStringLen(value));
  hres = SafeArrayDestroy(sa);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  SysFreeString(value);
  SysFreeString(gotvalue);
}
