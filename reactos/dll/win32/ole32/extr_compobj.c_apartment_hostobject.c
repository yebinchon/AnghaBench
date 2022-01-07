
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_object_params {int stream; int iid; int clsid; int apartment_threaded; int regdata; } ;
struct apartment {int dummy; } ;
typedef int WCHAR ;
typedef int LARGE_INTEGER ;
typedef int IUnknown ;
typedef int HRESULT ;


 int ARRAY_SIZE (int *) ;
 int CoMarshalInterface (int ,int *,int *,int ,int *,int ) ;
 scalar_t__ FAILED (int ) ;
 int IStream_Seek (int ,int const,int ,int *) ;
 int IUnknown_Release (int *) ;
 int MAX_PATH ;
 int MSHCTX_INPROC ;
 int MSHLFLAGS_NORMAL ;
 int REGDB_E_CLASSNOTREG ;
 int STREAM_SEEK_SET ;
 int TRACE (char*,int ,int ) ;
 int WARN (char*,int ) ;
 int apartment_getclassobject (struct apartment*,int *,int ,int *,int *,void**) ;
 int debugstr_guid (int *) ;
 int get_object_dll_path (int *,int *,int ) ;

__attribute__((used)) static HRESULT apartment_hostobject(struct apartment *apt,
                                    const struct host_object_params *params)
{
    IUnknown *object;
    HRESULT hr;
    static const LARGE_INTEGER llZero;
    WCHAR dllpath[MAX_PATH+1];

    TRACE("clsid %s, iid %s\n", debugstr_guid(&params->clsid), debugstr_guid(&params->iid));

    if (!get_object_dll_path(&params->regdata, dllpath, ARRAY_SIZE(dllpath)))
    {

        WARN("class %s not registered inproc\n", debugstr_guid(&params->clsid));
        return REGDB_E_CLASSNOTREG;
    }

    hr = apartment_getclassobject(apt, dllpath, params->apartment_threaded,
                                  &params->clsid, &params->iid, (void **)&object);
    if (FAILED(hr))
        return hr;

    hr = CoMarshalInterface(params->stream, &params->iid, object, MSHCTX_INPROC, ((void*)0), MSHLFLAGS_NORMAL);
    if (FAILED(hr))
        IUnknown_Release(object);
    IStream_Seek(params->stream, llZero, STREAM_SEEK_SET, ((void*)0));

    return hr;
}
