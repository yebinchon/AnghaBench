
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stgmed_obj_t ;
typedef int HRESULT ;
typedef int DWORD ;


 int BINDF_ASYNCHRONOUS ;
 int MK_S_ASYNCHRONOUS ;
 int S_OK ;

__attribute__((used)) static HRESULT stgmed_file_get_result(stgmed_obj_t *obj, DWORD bindf, void **result)
{
    return bindf & BINDF_ASYNCHRONOUS ? MK_S_ASYNCHRONOUS : S_OK;
}
