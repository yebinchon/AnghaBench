
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cfFormat; scalar_t__ dwAspect; scalar_t__ lindex; scalar_t__ tymed; int * ptd; } ;
typedef int IEnumFORMATETC ;
typedef int IDataObject ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ FORMATETC ;
typedef scalar_t__ DWORD ;


 int CoTaskMemFree (int *) ;
 int DATADIR_GET ;
 int DATADIR_SET ;
 scalar_t__ DataObjectImpl_EnumFormatEtc_calls ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_NOTIMPL ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IDataObject_EnumFormatEtc (int *,int ,int **) ;
 int IDataObject_Release (int *) ;
 scalar_t__ IEnumFORMATETC_Clone (int *,int **) ;
 scalar_t__ IEnumFORMATETC_Next (int *,int,TYPE_1__*,int *) ;
 int IEnumFORMATETC_Release (int *) ;
 scalar_t__ IEnumFORMATETC_Reset (int *) ;
 scalar_t__ IEnumFORMATETC_Skip (int *,int) ;
 scalar_t__ OleGetClipboard (int **) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int) ;
 int dump_fmtetc (TYPE_1__*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int trace (char*,scalar_t__,int ) ;

__attribute__((used)) static void test_enum_fmtetc(IDataObject *src)
{
    HRESULT hr;
    IDataObject *data;
    IEnumFORMATETC *enum_fmt, *src_enum;
    FORMATETC fmt, src_fmt;
    DWORD count = 0;

    hr = OleGetClipboard(&data);
    ok(hr == S_OK, "OleGetClipboard failed with error 0x%08x\n", hr);

    hr = IDataObject_EnumFormatEtc(data, DATADIR_SET, &enum_fmt);
    ok(hr == E_NOTIMPL ||
       broken(hr == E_INVALIDARG),
       "got %08x\n", hr);

    DataObjectImpl_EnumFormatEtc_calls = 0;
    hr = IDataObject_EnumFormatEtc(data, DATADIR_GET, &enum_fmt);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(DataObjectImpl_EnumFormatEtc_calls == 0, "EnumFormatEtc was called\n");
    if (FAILED(hr))
    {
        skip("EnumFormatEtc failed, skipping tests.\n");
        return;
    }

    if(src) IDataObject_EnumFormatEtc(src, DATADIR_GET, &src_enum);

    while((hr = IEnumFORMATETC_Next(enum_fmt, 1, &fmt, ((void*)0))) == S_OK)
    {
        ok(src != ((void*)0), "shouldn't be here\n");
        hr = IEnumFORMATETC_Next(src_enum, 1, &src_fmt, ((void*)0));
        ok(hr == S_OK, "%d: got %08x\n", count, hr);
        trace("%d: %s\n", count, dump_fmtetc(&fmt));
        ok(fmt.cfFormat == src_fmt.cfFormat, "%d: %04x %04x\n", count, fmt.cfFormat, src_fmt.cfFormat);
        ok(fmt.dwAspect == src_fmt.dwAspect, "%d: %08x %08x\n", count, fmt.dwAspect, src_fmt.dwAspect);
        ok(fmt.lindex == src_fmt.lindex, "%d: %08x %08x\n", count, fmt.lindex, src_fmt.lindex);
        ok(fmt.tymed == src_fmt.tymed, "%d: %08x %08x\n", count, fmt.tymed, src_fmt.tymed);
        if(fmt.ptd)
        {
            ok(src_fmt.ptd != ((void*)0), "%d: expected non-NULL\n", count);
            CoTaskMemFree(fmt.ptd);
            CoTaskMemFree(src_fmt.ptd);
        }
        count++;
    }

    ok(hr == S_FALSE, "%d: got %08x\n", count, hr);

    if(src)
    {
        hr = IEnumFORMATETC_Next(src_enum, 1, &src_fmt, ((void*)0));
        ok(hr == S_FALSE, "%d: got %08x\n", count, hr);
        IEnumFORMATETC_Release(src_enum);
    }

    hr = IEnumFORMATETC_Reset(enum_fmt);
    ok(hr == S_OK, "got %08x\n", hr);

    if(src)
    {
        IEnumFORMATETC *clone;
        FORMATETC third_fmt;

        hr = IEnumFORMATETC_Next(enum_fmt, 1, &third_fmt, ((void*)0));
        ok(hr == S_OK, "got %08x\n", hr);
        hr = IEnumFORMATETC_Next(enum_fmt, 1, &third_fmt, ((void*)0));
        ok(hr == S_OK, "got %08x\n", hr);
        hr = IEnumFORMATETC_Next(enum_fmt, 1, &third_fmt, ((void*)0));
        ok(hr == S_OK, "got %08x\n", hr);

        hr = IEnumFORMATETC_Reset(enum_fmt);
        ok(hr == S_OK, "got %08x\n", hr);
        hr = IEnumFORMATETC_Skip(enum_fmt, 2);
        ok(hr == S_OK, "got %08x\n", hr);

        hr = IEnumFORMATETC_Clone(enum_fmt, &clone);
        ok(hr == S_OK, "got %08x\n", hr);
        hr = IEnumFORMATETC_Next(enum_fmt, 1, &fmt, ((void*)0));
        ok(hr == S_OK, "got %08x\n", hr);
        ok(fmt.cfFormat == third_fmt.cfFormat, "formats don't match\n");
        hr = IEnumFORMATETC_Next(clone, 1, &fmt, ((void*)0));
        ok(hr == S_OK, "got %08x\n", hr);
        ok(fmt.cfFormat == third_fmt.cfFormat, "formats don't match\n");
        IEnumFORMATETC_Release(clone);
    }

    IEnumFORMATETC_Release(enum_fmt);
    IDataObject_Release(data);
}
