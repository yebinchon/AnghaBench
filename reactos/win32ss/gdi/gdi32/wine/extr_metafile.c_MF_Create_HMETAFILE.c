
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int METAHEADER ;
typedef int HMETAFILE ;


 int OBJ_METAFILE ;
 int alloc_gdi_handle (int *,int ,int *) ;

HMETAFILE MF_Create_HMETAFILE(METAHEADER *mh)
{
    return alloc_gdi_handle( mh, OBJ_METAFILE, ((void*)0) );
}
