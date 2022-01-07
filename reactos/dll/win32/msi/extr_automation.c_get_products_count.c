
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 int DISP_E_EXCEPTION ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 int GUID_SIZE ;
 scalar_t__ MsiEnumProductsW (int,int *) ;
 scalar_t__ MsiEnumRelatedProductsW (int const*,int ,int,int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT get_products_count(const WCHAR *product, int *len)
{
    int i = 0;

    while (1)
    {
        WCHAR dataW[GUID_SIZE];
        UINT ret;


        if (product)
            ret = MsiEnumRelatedProductsW(product, 0, i, dataW);
        else
            ret = MsiEnumProductsW(i, dataW);

        if (ret == ERROR_NO_MORE_ITEMS) break;

        if (ret != ERROR_SUCCESS)
            return DISP_E_EXCEPTION;

        i++;
    }

    *len = i;

    return S_OK;
}
