
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* class_constructor ) (int *,void**) ;
typedef int IWICPersistStream ;
typedef int IWICMetadataReader ;
typedef int IStream ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IID_IWICMetadataReader ;
 int IID_IWICPersistStream ;
 int IStream_Release (int *) ;
 int IWICMetadataReader_QueryInterface (int *,int *,void**) ;
 int IWICMetadataReader_Release (int *) ;
 int IWICPersistStream_LoadEx (int *,int *,int *,int ) ;
 int IWICPersistStream_Release (int *) ;
 int S_OK ;
 int WICPersistOptionDefault ;
 int * create_stream (void const*,int) ;

__attribute__((used)) static HRESULT create_metadata_reader(const void *data, int data_size,
                                      class_constructor constructor,
                                      IWICMetadataReader **reader)
{
    HRESULT hr;
    IWICMetadataReader *metadata_reader;
    IWICPersistStream *persist;
    IStream *stream;



    hr = constructor(&IID_IWICMetadataReader, (void**)&metadata_reader);
    if (FAILED(hr)) return hr;

    hr = IWICMetadataReader_QueryInterface(metadata_reader, &IID_IWICPersistStream, (void **)&persist);
    if (FAILED(hr))
    {
        IWICMetadataReader_Release(metadata_reader);
        return hr;
    }

    stream = create_stream(data, data_size);
    IWICPersistStream_LoadEx(persist, stream, ((void*)0), WICPersistOptionDefault);
    IStream_Release(stream);

    IWICPersistStream_Release(persist);

    *reader = metadata_reader;
    return S_OK;
}
