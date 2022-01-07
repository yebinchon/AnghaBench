
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int IWICMetadataReader ;
typedef int IWICMetadataBlockReader ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 scalar_t__ IWICMetadataBlockReader_GetCount (int *,scalar_t__*) ;
 scalar_t__ IWICMetadataBlockReader_GetReaderByIndex (int *,scalar_t__,int **) ;
 scalar_t__ IWICMetadataReader_GetMetadataFormat (int *,int *) ;
 int IWICMetadataReader_Release (int *) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ WINCODEC_ERR_PROPERTYNOTFOUND ;

__attribute__((used)) static HRESULT find_reader_from_block(IWICMetadataBlockReader *block_reader, UINT index,
                                      GUID *guid, IWICMetadataReader **reader)
{
    HRESULT hr;
    GUID format;
    IWICMetadataReader *new_reader;
    UINT count, i, matched_index;

    *reader = ((void*)0);

    hr = IWICMetadataBlockReader_GetCount(block_reader, &count);
    if (hr != S_OK) return hr;

    matched_index = 0;

    for (i = 0; i < count; i++)
    {
        hr = IWICMetadataBlockReader_GetReaderByIndex(block_reader, i, &new_reader);
        if (hr != S_OK) return hr;

        hr = IWICMetadataReader_GetMetadataFormat(new_reader, &format);
        if (hr == S_OK)
        {
            if (IsEqualGUID(&format, guid))
            {
                if (matched_index == index)
                {
                    *reader = new_reader;
                    return S_OK;
                }

                matched_index++;
            }
        }

        IWICMetadataReader_Release(new_reader);
        if (hr != S_OK) return hr;
    }

    return WINCODEC_ERR_PROPERTYNOTFOUND;
}
