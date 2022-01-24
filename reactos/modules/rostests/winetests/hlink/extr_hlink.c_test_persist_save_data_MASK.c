#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IPersistStream ;
typedef  int /*<<< orphan*/  IHlink ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  unsigned int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IPersistStream ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int TRUE ; 
 scalar_t__ FUNC9 (int) ; 
 unsigned char const* expected_hlink_data2 ; 
 unsigned char const* expected_hlink_data2_ie7 ; 
 unsigned char const* expected_hlink_data3 ; 
 unsigned char const* expected_hlink_data3_ie7 ; 
 unsigned char const* expected_hlink_data5_ie7 ; 
 unsigned char const* expected_hlink_data_ie7 ; 
 unsigned int FUNC10 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static void FUNC13(const char *testname, IHlink *lnk,
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

    hr = FUNC5(lnk, &IID_IPersistStream, (void **)&ps);
    FUNC11(hr == S_OK, "IHlink_QueryInterface failed with error 0x%08x\n", hr);

    hr = FUNC0(NULL, TRUE, &stream);
    FUNC11(hr == S_OK, "CreateStreamOnHGlobal failed with error 0x%08x\n", hr);

    hr = FUNC7(ps, stream, TRUE);
    FUNC11(hr == S_OK, "IPersistStream_Save failed with error 0x%08x\n", hr);

    hr = FUNC1(stream, &hglobal);
    FUNC11(hr == S_OK, "GetHGlobalFromStream failed with error 0x%08x\n", hr);

    data_size = FUNC3(hglobal);

    data = FUNC2(hglobal);

    /* first check we have the right amount of data */
    FUNC11((data_size == expected_data_size) ||
       (data_size == expected_data_alt_size),
       "%s: Size of saved data differs (expected %d or %d, actual %d)\n",
       testname, expected_data_size, expected_data_alt_size, data_size);

    same = TRUE;
    /* then do a byte-by-byte comparison */
    for (i = 0; i < FUNC10(data_size, expected_data_size); i++)
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
        /* then try the alternate data */
        same = TRUE;
        for (i = 0; i < FUNC10(data_size, expected_data_alt_size); i++)
        {
            if ((expected_data_alt == expected_hlink_data_ie7  && i == 89)  /* Win10 */ ||
                (expected_data_alt == expected_hlink_data2_ie7 && i == 109) /* Win10 */ ||
                (expected_data_alt == expected_hlink_data3_ie7 && i == 109) /* Win10 */ ||
                (expected_data_alt == expected_hlink_data5_ie7 && i == 107) /* Win10 */)
            {
                FUNC11(data[i] == 0 || FUNC9(data[i] == 1) || FUNC9(data[i] == 3),
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

    FUNC11(same, "%s: Saved data differs\n", testname);
    if (!same)
    {
        for (i = 0; i < data_size; i++)
        {
            if (i % 8 == 0) FUNC12("    ");
            FUNC12("0x%02x,", data[i]);
            if (i % 8 == 7) FUNC12("\n");
        }
        FUNC12("\n");
    }

    FUNC4(hglobal);

    FUNC8(stream);
    FUNC6(ps);
}