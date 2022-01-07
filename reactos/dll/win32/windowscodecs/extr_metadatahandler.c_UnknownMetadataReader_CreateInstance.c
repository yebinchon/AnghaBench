
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int HRESULT ;


 int MetadataReader_Create (int *,int ,void**) ;
 int UnknownMetadataReader_Vtbl ;

HRESULT UnknownMetadataReader_CreateInstance(REFIID iid, void** ppv)
{
    return MetadataReader_Create(&UnknownMetadataReader_Vtbl, iid, ppv);
}
