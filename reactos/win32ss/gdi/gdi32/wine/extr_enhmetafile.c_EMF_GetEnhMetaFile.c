
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HENHMETAFILE ;
typedef int HANDLE ;
typedef int ENHMETAHEADER ;


 int CloseHandle (int ) ;
 int CreateFileMappingA (int ,int *,int ,int ,int ,int *) ;
 int EMF_Create_HENHMETAFILE (int *,int ) ;
 int FILE_MAP_READ ;
 int * MapViewOfFile (int ,int ,int ,int ,int ) ;
 int PAGE_READONLY ;
 int TRUE ;
 int UnmapViewOfFile (int *) ;

__attribute__((used)) static HENHMETAFILE EMF_GetEnhMetaFile( HANDLE hFile )
{
    ENHMETAHEADER *emh;
    HANDLE hMapping;
    HENHMETAFILE hemf;

    hMapping = CreateFileMappingA( hFile, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0) );
    emh = MapViewOfFile( hMapping, FILE_MAP_READ, 0, 0, 0 );
    CloseHandle( hMapping );

    if (!emh) return 0;

    hemf = EMF_Create_HENHMETAFILE( emh, TRUE );
    if (!hemf)
        UnmapViewOfFile( emh );
    return hemf;
}
