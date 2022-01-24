#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/ * pFilter; } ;
typedef  TYPE_1__ PIN_INFO ;
typedef  scalar_t__ PIN_DIRECTION ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IFileSourceFilter ;
typedef  int /*<<< orphan*/  IEnumPins ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILTER_STATE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_AsyncReader ; 
 int /*<<< orphan*/  CLSID_NullRenderer ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ E_NOINTERFACE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBaseFilter ; 
 int /*<<< orphan*/  IID_IFileSourceFilter ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ PINDIR_OUTPUT ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  avifile ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  pAviSplitter ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 scalar_t__ FUNC28 (char*,char*) ; 
 scalar_t__ FUNC29 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC33(void)
{
    IFileSourceFilter *pfile = NULL;
    IBaseFilter *preader = NULL, *pavi = NULL;
    IEnumPins *enumpins = NULL;
    IPin *filepin = NULL, *avipin = NULL;
    HRESULT hr;
    HANDLE file = NULL;
    PIN_DIRECTION dir = PINDIR_OUTPUT;
    char buffer[13];
    DWORD readbytes;
    FILTER_STATE state;

    WCHAR *filename = FUNC24(avifile);

    file = FUNC2(filename, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE,
        NULL, OPEN_EXISTING, 0, NULL);
    if (file == INVALID_HANDLE_VALUE)
    {
        FUNC27("Could not read test file \"%s\", skipping test\n", FUNC32(filename));
        FUNC3(filename);
        return;
    }

    FUNC25(buffer, 0, 13);
    readbytes = 12;
    FUNC23(file, buffer, readbytes, &readbytes, NULL);
    FUNC0(file);
    if (FUNC29(buffer, "RIFF", 4) || FUNC28(buffer + 8, "AVI "))
    {
        FUNC27("%s is not an avi riff file, not doing the avi splitter test\n",
            FUNC32(filename));
        FUNC3(filename);
        return;
    }

    hr = FUNC22(pAviSplitter, &IID_IFileSourceFilter,
        (void **)&pfile);
    FUNC26(hr == E_NOINTERFACE,
        "Avi splitter returns unexpected error: %08x\n", hr);
    if (pfile)
        FUNC15(pfile);
    pfile = NULL;

    hr = FUNC1(&CLSID_AsyncReader, NULL, CLSCTX_INPROC_SERVER,
        &IID_IBaseFilter, (LPVOID*)&preader);
    FUNC26(hr == S_OK, "Could not create asynchronous reader: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = FUNC7(preader, &IID_IFileSourceFilter,
        (void**)&pfile);
    FUNC26(hr == S_OK, "Could not get IFileSourceFilter: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = FUNC22(pAviSplitter, &IID_IBaseFilter,
        (void**)&pavi);
    FUNC26(hr == S_OK, "Could not get base filter: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = FUNC14(pfile, filename, NULL);
    if (hr != S_OK)
    {
        FUNC30("Could not load file: %08x\n", hr);
        goto fail;
    }

    hr = FUNC4(preader, &enumpins);
    FUNC26(hr == S_OK, "No enumpins: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = FUNC11(enumpins, 1, &filepin, NULL);
    FUNC26(hr == S_OK, "No pin: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    FUNC12(enumpins);
    enumpins = NULL;

    hr = FUNC4(pavi, &enumpins);
    FUNC26(hr == S_OK, "No enumpins: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = FUNC11(enumpins, 1, &avipin, NULL);
    FUNC26(hr == S_OK, "No pin: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = FUNC16(filepin, avipin, NULL);
    FUNC26(hr == S_OK, "Could not connect: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    FUNC21(avipin);
    avipin = NULL;

    FUNC13(enumpins);

    /* Windows puts the pins in the order: Outputpins - Inputpin,
     * wine does the reverse, just don't test it for now
     * Hate to admit it, but windows way makes more sense
     */
    while (FUNC11(enumpins, 1, &avipin, NULL) == S_OK)
    {
        FUNC19(avipin, &dir);
        if (dir == PINDIR_OUTPUT)
        {
            /* Well, connect it to a null renderer! */
            IBaseFilter *pnull = NULL;
            IEnumPins *nullenum = NULL;
            IPin *nullpin = NULL;

            hr = FUNC1(&CLSID_NullRenderer, NULL,
                CLSCTX_INPROC_SERVER, &IID_IBaseFilter, (LPVOID*)&pnull);
            if (hr == REGDB_E_CLASSNOTREG)
            {
                FUNC31("Null renderer not registered, skipping\n");
                break;
            }
            FUNC26(hr == S_OK, "Could not create null renderer: %08x\n", hr);

            hr = FUNC4(pnull, &nullenum);
            FUNC26(hr == S_OK, "Failed to enum pins, hr %#x.\n", hr);
            hr = FUNC11(nullenum, 1, &nullpin, NULL);
            FUNC26(hr == S_OK, "Failed to get next pin, hr %#x.\n", hr);
            FUNC12(nullenum);
            FUNC19(nullpin, &dir);

            hr = FUNC16(avipin, nullpin, NULL);
            FUNC26(hr == S_OK, "Failed to connect output pin: %08x\n", hr);
            FUNC21(nullpin);
            if (hr != S_OK)
            {
                FUNC8(pnull);
                break;
            }
            FUNC9(pnull, 0);
        }

        FUNC21(avipin);
        avipin = NULL;
    }

    if (avipin)
        FUNC21(avipin);
    avipin = NULL;

    if (hr != S_OK)
        goto fail2;
    /* At this point there is a minimalistic connected avi splitter that can
     * be used for all sorts of source filter tests. However that still needs
     * to be written at a later time.
     *
     * Interesting tests:
     * - Can you disconnect an output pin while running?
     *   Expecting: Yes
     * - Can you disconnect the pullpin while running?
     *   Expecting: No
     * - Is the reference count incremented during playback or when connected?
     *   Does this happen once for every output pin? Or is there something else
     *   going on.
     *   Expecting: You tell me
     */

    FUNC9(preader, 0);
    FUNC9(pavi, 0);
    FUNC5(pavi, INFINITE, &state);

    FUNC6(pavi);
    FUNC6(preader);
    FUNC10(pavi);
    FUNC10(preader);
    FUNC5(pavi, INFINITE, &state);
    FUNC5(preader, INFINITE, &state);

fail2:
    FUNC13(enumpins);
    while (FUNC11(enumpins, 1, &avipin, NULL) == S_OK)
    {
        IPin *to = NULL;

        FUNC19(avipin, &dir);
        FUNC17(avipin, &to);
        if (to)
        {
            FUNC21(to);

            if (dir == PINDIR_OUTPUT)
            {
                PIN_INFO info;

                hr = FUNC20(to, &info);
                FUNC26(hr == S_OK, "Failed to query pin info, hr %#x.\n", hr);

                /* Release twice: Once normal, second from the
                 * previous while loop
                 */
                FUNC10(info.pFilter);
                FUNC18(to);
                FUNC18(avipin);
                FUNC8(info.pFilter);
                FUNC8(info.pFilter);
            }
            else
            {
                FUNC18(to);
                FUNC18(avipin);
            }
        }
        FUNC21(avipin);
        avipin = NULL;
    }

fail:
    if (hr != S_OK)
        FUNC27("Prerequisites not matched, skipping remainder of test\n");
    if (enumpins)
        FUNC12(enumpins);

    if (avipin)
        FUNC21(avipin);
    if (filepin)
    {
        IPin *to = NULL;

        FUNC17(filepin, &to);
        if (to)
        {
            FUNC18(filepin);
            FUNC18(to);
        }
        FUNC21(filepin);
    }

    if (preader)
        FUNC8(preader);
    if (pavi)
        FUNC8(pavi);
    if (pfile)
        FUNC15(pfile);

    FUNC3(filename);
}