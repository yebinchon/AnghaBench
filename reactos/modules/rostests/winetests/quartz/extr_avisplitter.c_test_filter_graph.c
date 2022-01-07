
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int * pFilter; } ;
typedef TYPE_1__ PIN_INFO ;
typedef scalar_t__ PIN_DIRECTION ;
typedef int LPVOID ;
typedef int IPin ;
typedef int IFileSourceFilter ;
typedef int IEnumPins ;
typedef int IBaseFilter ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int FILTER_STATE ;
typedef int DWORD ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_AsyncReader ;
 int CLSID_NullRenderer ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 scalar_t__ CreateFileW (int *,int ,int,int *,int ,int ,int *) ;
 int DeleteFileW (int *) ;
 scalar_t__ E_NOINTERFACE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 scalar_t__ IBaseFilter_EnumPins (int *,int **) ;
 int IBaseFilter_GetState (int *,int ,int *) ;
 int IBaseFilter_Pause (int *) ;
 scalar_t__ IBaseFilter_QueryInterface (int *,int *,void**) ;
 int IBaseFilter_Release (int *) ;
 int IBaseFilter_Run (int *,int ) ;
 int IBaseFilter_Stop (int *) ;
 scalar_t__ IEnumPins_Next (int *,int,int **,int *) ;
 int IEnumPins_Release (int *) ;
 int IEnumPins_Reset (int *) ;
 scalar_t__ IFileSourceFilter_Load (int *,int *,int *) ;
 int IFileSourceFilter_Release (int *) ;
 int IID_IBaseFilter ;
 int IID_IFileSourceFilter ;
 int INFINITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ IPin_Connect (int *,int *,int *) ;
 int IPin_ConnectedTo (int *,int **) ;
 int IPin_Disconnect (int *) ;
 int IPin_QueryDirection (int *,scalar_t__*) ;
 scalar_t__ IPin_QueryPinInfo (int *,TYPE_1__*) ;
 int IPin_Release (int *) ;
 scalar_t__ IUnknown_QueryInterface (int ,int *,void**) ;
 int OPEN_EXISTING ;
 scalar_t__ PINDIR_OUTPUT ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 int ReadFile (scalar_t__,char*,int,int*,int *) ;
 scalar_t__ S_OK ;
 int avifile ;
 int * load_resource (int ) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,scalar_t__) ;
 int pAviSplitter ;
 int skip (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int trace (char*,scalar_t__) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_filter_graph(void)
{
    IFileSourceFilter *pfile = ((void*)0);
    IBaseFilter *preader = ((void*)0), *pavi = ((void*)0);
    IEnumPins *enumpins = ((void*)0);
    IPin *filepin = ((void*)0), *avipin = ((void*)0);
    HRESULT hr;
    HANDLE file = ((void*)0);
    PIN_DIRECTION dir = PINDIR_OUTPUT;
    char buffer[13];
    DWORD readbytes;
    FILTER_STATE state;

    WCHAR *filename = load_resource(avifile);

    file = CreateFileW(filename, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE,
        ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (file == INVALID_HANDLE_VALUE)
    {
        skip("Could not read test file \"%s\", skipping test\n", wine_dbgstr_w(filename));
        DeleteFileW(filename);
        return;
    }

    memset(buffer, 0, 13);
    readbytes = 12;
    ReadFile(file, buffer, readbytes, &readbytes, ((void*)0));
    CloseHandle(file);
    if (strncmp(buffer, "RIFF", 4) || strcmp(buffer + 8, "AVI "))
    {
        skip("%s is not an avi riff file, not doing the avi splitter test\n",
            wine_dbgstr_w(filename));
        DeleteFileW(filename);
        return;
    }

    hr = IUnknown_QueryInterface(pAviSplitter, &IID_IFileSourceFilter,
        (void **)&pfile);
    ok(hr == E_NOINTERFACE,
        "Avi splitter returns unexpected error: %08x\n", hr);
    if (pfile)
        IFileSourceFilter_Release(pfile);
    pfile = ((void*)0);

    hr = CoCreateInstance(&CLSID_AsyncReader, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_IBaseFilter, (LPVOID*)&preader);
    ok(hr == S_OK, "Could not create asynchronous reader: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = IBaseFilter_QueryInterface(preader, &IID_IFileSourceFilter,
        (void**)&pfile);
    ok(hr == S_OK, "Could not get IFileSourceFilter: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = IUnknown_QueryInterface(pAviSplitter, &IID_IBaseFilter,
        (void**)&pavi);
    ok(hr == S_OK, "Could not get base filter: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = IFileSourceFilter_Load(pfile, filename, ((void*)0));
    if (hr != S_OK)
    {
        trace("Could not load file: %08x\n", hr);
        goto fail;
    }

    hr = IBaseFilter_EnumPins(preader, &enumpins);
    ok(hr == S_OK, "No enumpins: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = IEnumPins_Next(enumpins, 1, &filepin, ((void*)0));
    ok(hr == S_OK, "No pin: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    IEnumPins_Release(enumpins);
    enumpins = ((void*)0);

    hr = IBaseFilter_EnumPins(pavi, &enumpins);
    ok(hr == S_OK, "No enumpins: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = IEnumPins_Next(enumpins, 1, &avipin, ((void*)0));
    ok(hr == S_OK, "No pin: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    hr = IPin_Connect(filepin, avipin, ((void*)0));
    ok(hr == S_OK, "Could not connect: %08x\n", hr);
    if (hr != S_OK)
        goto fail;

    IPin_Release(avipin);
    avipin = ((void*)0);

    IEnumPins_Reset(enumpins);





    while (IEnumPins_Next(enumpins, 1, &avipin, ((void*)0)) == S_OK)
    {
        IPin_QueryDirection(avipin, &dir);
        if (dir == PINDIR_OUTPUT)
        {

            IBaseFilter *pnull = ((void*)0);
            IEnumPins *nullenum = ((void*)0);
            IPin *nullpin = ((void*)0);

            hr = CoCreateInstance(&CLSID_NullRenderer, ((void*)0),
                CLSCTX_INPROC_SERVER, &IID_IBaseFilter, (LPVOID*)&pnull);
            if (hr == REGDB_E_CLASSNOTREG)
            {
                win_skip("Null renderer not registered, skipping\n");
                break;
            }
            ok(hr == S_OK, "Could not create null renderer: %08x\n", hr);

            hr = IBaseFilter_EnumPins(pnull, &nullenum);
            ok(hr == S_OK, "Failed to enum pins, hr %#x.\n", hr);
            hr = IEnumPins_Next(nullenum, 1, &nullpin, ((void*)0));
            ok(hr == S_OK, "Failed to get next pin, hr %#x.\n", hr);
            IEnumPins_Release(nullenum);
            IPin_QueryDirection(nullpin, &dir);

            hr = IPin_Connect(avipin, nullpin, ((void*)0));
            ok(hr == S_OK, "Failed to connect output pin: %08x\n", hr);
            IPin_Release(nullpin);
            if (hr != S_OK)
            {
                IBaseFilter_Release(pnull);
                break;
            }
            IBaseFilter_Run(pnull, 0);
        }

        IPin_Release(avipin);
        avipin = ((void*)0);
    }

    if (avipin)
        IPin_Release(avipin);
    avipin = ((void*)0);

    if (hr != S_OK)
        goto fail2;
    IBaseFilter_Run(preader, 0);
    IBaseFilter_Run(pavi, 0);
    IBaseFilter_GetState(pavi, INFINITE, &state);

    IBaseFilter_Pause(pavi);
    IBaseFilter_Pause(preader);
    IBaseFilter_Stop(pavi);
    IBaseFilter_Stop(preader);
    IBaseFilter_GetState(pavi, INFINITE, &state);
    IBaseFilter_GetState(preader, INFINITE, &state);

fail2:
    IEnumPins_Reset(enumpins);
    while (IEnumPins_Next(enumpins, 1, &avipin, ((void*)0)) == S_OK)
    {
        IPin *to = ((void*)0);

        IPin_QueryDirection(avipin, &dir);
        IPin_ConnectedTo(avipin, &to);
        if (to)
        {
            IPin_Release(to);

            if (dir == PINDIR_OUTPUT)
            {
                PIN_INFO info;

                hr = IPin_QueryPinInfo(to, &info);
                ok(hr == S_OK, "Failed to query pin info, hr %#x.\n", hr);




                IBaseFilter_Stop(info.pFilter);
                IPin_Disconnect(to);
                IPin_Disconnect(avipin);
                IBaseFilter_Release(info.pFilter);
                IBaseFilter_Release(info.pFilter);
            }
            else
            {
                IPin_Disconnect(to);
                IPin_Disconnect(avipin);
            }
        }
        IPin_Release(avipin);
        avipin = ((void*)0);
    }

fail:
    if (hr != S_OK)
        skip("Prerequisites not matched, skipping remainder of test\n");
    if (enumpins)
        IEnumPins_Release(enumpins);

    if (avipin)
        IPin_Release(avipin);
    if (filepin)
    {
        IPin *to = ((void*)0);

        IPin_ConnectedTo(filepin, &to);
        if (to)
        {
            IPin_Disconnect(filepin);
            IPin_Disconnect(to);
        }
        IPin_Release(filepin);
    }

    if (preader)
        IBaseFilter_Release(preader);
    if (pavi)
        IBaseFilter_Release(pavi);
    if (pfile)
        IFileSourceFilter_Release(pfile);

    DeleteFileW(filename);
}
