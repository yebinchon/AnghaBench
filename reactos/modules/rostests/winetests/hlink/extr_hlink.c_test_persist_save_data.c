
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStream ;
typedef int IPersistStream ;
typedef int IHlink ;
typedef scalar_t__ HRESULT ;
typedef int HGLOBAL ;
typedef unsigned int DWORD ;
typedef int BOOL ;


 scalar_t__ CreateStreamOnHGlobal (int *,int,int **) ;
 int FALSE ;
 scalar_t__ GetHGlobalFromStream (int *,int *) ;
 unsigned char* GlobalLock (int ) ;
 unsigned int GlobalSize (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ IHlink_QueryInterface (int *,int *,void**) ;
 int IID_IPersistStream ;
 int IPersistStream_Release (int *) ;
 scalar_t__ IPersistStream_Save (int *,int *,int) ;
 int IStream_Release (int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ broken (int) ;
 unsigned char const* expected_hlink_data2 ;
 unsigned char const* expected_hlink_data2_ie7 ;
 unsigned char const* expected_hlink_data3 ;
 unsigned char const* expected_hlink_data3_ie7 ;
 unsigned char const* expected_hlink_data5_ie7 ;
 unsigned char const* expected_hlink_data_ie7 ;
 unsigned int min (unsigned int,unsigned int) ;
 int ok (int,char*,...) ;
 int printf (char*,...) ;

__attribute__((used)) static void test_persist_save_data(const char *testname, IHlink *lnk,
                                   const unsigned char *expected_data,
                                   unsigned int expected_data_size,
                                   const unsigned char *expected_data_alt,
                                   unsigned int expected_data_alt_size)
{
    HRESULT hr;
    IStream *stream;
    IPersistStream *ps;
    HGLOBAL hglobal;
    DWORD data_size;
    const unsigned char *data;
    DWORD i;
    BOOL same;

    hr = IHlink_QueryInterface(lnk, &IID_IPersistStream, (void **)&ps);
    ok(hr == S_OK, "IHlink_QueryInterface failed with error 0x%08x\n", hr);

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
    ok(hr == S_OK, "CreateStreamOnHGlobal failed with error 0x%08x\n", hr);

    hr = IPersistStream_Save(ps, stream, TRUE);
    ok(hr == S_OK, "IPersistStream_Save failed with error 0x%08x\n", hr);

    hr = GetHGlobalFromStream(stream, &hglobal);
    ok(hr == S_OK, "GetHGlobalFromStream failed with error 0x%08x\n", hr);

    data_size = GlobalSize(hglobal);

    data = GlobalLock(hglobal);


    ok((data_size == expected_data_size) ||
       (data_size == expected_data_alt_size),
       "%s: Size of saved data differs (expected %d or %d, actual %d)\n",
       testname, expected_data_size, expected_data_alt_size, data_size);

    same = TRUE;

    for (i = 0; i < min(data_size, expected_data_size); i++)
    {
        if ((expected_data[i] != data[i]) &&
            (((expected_data != expected_hlink_data2) &&
              (expected_data != expected_hlink_data3)) ||
             ((i < 52 || i >= 56) && (i < 80 || i >= 84))))
        {
            same = FALSE;
            break;
        }
    }

    if (!same && (expected_data_alt != expected_data))
    {

        same = TRUE;
        for (i = 0; i < min(data_size, expected_data_alt_size); i++)
        {
            if ((expected_data_alt == expected_hlink_data_ie7 && i == 89) ||
                (expected_data_alt == expected_hlink_data2_ie7 && i == 109) ||
                (expected_data_alt == expected_hlink_data3_ie7 && i == 109) ||
                (expected_data_alt == expected_hlink_data5_ie7 && i == 107) )
            {
                ok(data[i] == 0 || broken(data[i] == 1) || broken(data[i] == 3),
                   "Expected 0 or 1, got %d\n", data[i]);
                continue;
            }
            if ((expected_data_alt[i] != data[i]) &&
                (((expected_data_alt != expected_hlink_data2) &&
                  (expected_data_alt != expected_hlink_data3)) ||
                 ((i < 52 || i >= 56) && (i < 80 || i >= 84))))
            {
                same = FALSE;
                break;
            }
        }
    }

    ok(same, "%s: Saved data differs\n", testname);
    if (!same)
    {
        for (i = 0; i < data_size; i++)
        {
            if (i % 8 == 0) printf("    ");
            printf("0x%02x,", data[i]);
            if (i % 8 == 7) printf("\n");
        }
        printf("\n");
    }

    GlobalUnlock(hglobal);

    IStream_Release(stream);
    IPersistStream_Release(ps);
}
