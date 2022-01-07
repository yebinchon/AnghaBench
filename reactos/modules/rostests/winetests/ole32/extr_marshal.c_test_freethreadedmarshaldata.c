
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ MSHCTX ;
typedef int IStream ;
typedef int HRESULT ;
typedef int HGLOBAL ;
typedef int GUID ;
typedef scalar_t__ DWORD ;


 int GetHGlobalFromStream (int *,int *) ;
 char* GlobalLock (int ) ;
 scalar_t__ GlobalSize (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ MSHCTX_INPROC ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int ok_ole_success (int ,int (*) (int *,int *)) ;
 scalar_t__ round_global_size (int) ;
 int trace (char*,int ) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_freethreadedmarshaldata(IStream *pStream, MSHCTX mshctx, void *ptr, DWORD mshlflags)
{
    HGLOBAL hglobal;
    DWORD size;
    char *marshal_data;
    HRESULT hr;

    hr = GetHGlobalFromStream(pStream, &hglobal);
    ok_ole_success(hr, GetHGlobalFromStream);

    size = GlobalSize(hglobal);

    marshal_data = GlobalLock(hglobal);

    if (mshctx == MSHCTX_INPROC)
    {
        DWORD expected_size = round_global_size(3*sizeof(DWORD) + sizeof(GUID));
        ok(size == expected_size ||
           broken(size == (2*sizeof(DWORD))) ,
           "size should have been %d instead of %d\n", expected_size, size);

        ok(*(DWORD *)marshal_data == mshlflags, "expected 0x%x, but got 0x%x for mshctx\n", mshlflags, *(DWORD *)marshal_data);
        marshal_data += sizeof(DWORD);
        ok(*(void **)marshal_data == ptr, "expected %p, but got %p for mshctx\n", ptr, *(void **)marshal_data);
        marshal_data += sizeof(void *);
        if (sizeof(void*) == 4 && size >= 3*sizeof(DWORD))
        {
            ok(*(DWORD *)marshal_data == 0, "expected 0x0, but got 0x%x\n", *(DWORD *)marshal_data);
            marshal_data += sizeof(DWORD);
        }
        if (size >= 3*sizeof(DWORD) + sizeof(GUID))
        {
            trace("got guid data: %s\n", wine_dbgstr_guid((GUID *)marshal_data));
        }
    }
    else
    {
        ok(size > sizeof(DWORD), "size should have been > sizeof(DWORD), not %d\n", size);
        ok(*(DWORD *)marshal_data == 0x574f454d ,
            "marshal data should be filled by standard marshal and start with MEOW signature\n");
    }

    GlobalUnlock(hglobal);
}
