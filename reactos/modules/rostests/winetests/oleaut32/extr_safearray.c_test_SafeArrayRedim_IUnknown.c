
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int ref; int IUnknown_iface; } ;
struct TYPE_11__ {int cbElements; } ;
struct TYPE_10__ {int lLbound; int cElements; } ;
typedef TYPE_1__ SAFEARRAYBOUND ;
typedef TYPE_2__ SAFEARRAY ;
typedef int LPUNKNOWN ;
typedef int LONG ;
typedef scalar_t__ HRESULT ;


 scalar_t__ S_OK ;
 TYPE_2__* SafeArrayCreate (int ,int,TYPE_1__*) ;
 scalar_t__ SafeArrayDestroy (TYPE_2__*) ;
 scalar_t__ SafeArrayPutElement (TYPE_2__*,int*,int *) ;
 scalar_t__ SafeArrayRedim (TYPE_2__*,TYPE_1__*) ;
 int VT_UNKNOWN ;
 int ok (int,char*,...) ;
 TYPE_3__ xtunk ;

__attribute__((used)) static void test_SafeArrayRedim_IUnknown(void)
{
  SAFEARRAYBOUND sab;
  LONG indices[1];
  SAFEARRAY *sa;
  HRESULT hres;

  sab.lLbound = 1;
  sab.cElements = 2;
  sa = SafeArrayCreate(VT_UNKNOWN, 1, &sab);
  ok(sa != ((void*)0), "UNKNOWN test couldn't create array\n");
  if (!sa)
    return;

  ok(sa->cbElements == sizeof(LPUNKNOWN), "LPUNKNOWN size mismatch\n");

  indices[0] = 2;
  xtunk.ref = 1;
  hres = SafeArrayPutElement(sa, indices, &xtunk.IUnknown_iface);
  ok(hres == S_OK, "Failed to put IUnknown element hres 0x%x\n", hres);
  ok(xtunk.ref == 2,"Failed to increment refcount of iface.\n");
  sab.cElements = 1;
  hres = SafeArrayRedim(sa, &sab);
  ok(hres == S_OK, "Failed to shrink array hres 0x%x\n", hres);
  ok(xtunk.ref == 1, "Failed to decrement refcount\n");
  hres = SafeArrayDestroy(sa);
  ok(hres == S_OK, "got 0x%08x\n", hres);
}
