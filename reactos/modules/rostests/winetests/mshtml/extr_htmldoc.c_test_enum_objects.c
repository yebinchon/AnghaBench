
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef void* ULONG ;
typedef void IUnknown ;
typedef int IOleContainer ;
typedef int IEnumUnknown ;
typedef void* HRESULT ;


 void* IEnumUnknown_Next (int *,int,void**,void**) ;
 int IEnumUnknown_Release (int *) ;
 void* IOleContainer_EnumObjects (int *,int ,int **) ;
 int OLECONTF_EMBEDDINGS ;
 void* S_FALSE ;
 void* S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_enum_objects(IOleContainer *container)
{
    IEnumUnknown *enum_unknown;
    IUnknown *buf[100] = {(void*)0xdeadbeef};
    ULONG fetched;
    HRESULT hres;

    enum_unknown = ((void*)0);
    hres = IOleContainer_EnumObjects(container, OLECONTF_EMBEDDINGS, &enum_unknown);
    ok(hres == S_OK, "EnumObjects failed: %08x\n", hres);
    ok(enum_unknown != ((void*)0), "enum_unknown == NULL\n");

    fetched = 0xdeadbeef;
    hres = IEnumUnknown_Next(enum_unknown, sizeof(buf)/sizeof(*buf), buf, &fetched);
    ok(hres == S_FALSE, "Next returned %08x\n", hres);
    ok(!fetched, "fetched = %d\n", fetched);
    ok(buf[0] == (void*)0xdeadbeef, "buf[0] = %p\n", buf[0]);

    fetched = 0xdeadbeef;
    hres = IEnumUnknown_Next(enum_unknown, 1, buf, &fetched);
    ok(hres == S_FALSE, "Next returned %08x\n", hres);
    ok(!fetched, "fetched = %d\n", fetched);

    hres = IEnumUnknown_Next(enum_unknown, 1, buf, ((void*)0));
    ok(hres == S_FALSE, "Next returned %08x\n", hres);

    IEnumUnknown_Release(enum_unknown);
}
