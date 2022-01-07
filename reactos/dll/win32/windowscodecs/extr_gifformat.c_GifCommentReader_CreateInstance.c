
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int HRESULT ;


 int GifCommentReader_Vtbl ;
 int MetadataReader_Create (int *,int ,void**) ;

HRESULT GifCommentReader_CreateInstance(REFIID iid, void **ppv)
{
    return MetadataReader_Create(&GifCommentReader_Vtbl, iid, ppv);
}
