
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int DWORD ;


 int GDI_ERROR ;
 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int META_SETMAPPERFLAGS ;
 scalar_t__ MFDRV_MetaParam2 (int ,int ,int ,int ) ;

DWORD MFDRV_SetMapperFlags( PHYSDEV dev, DWORD flags )
{
    return MFDRV_MetaParam2( dev, META_SETMAPPERFLAGS, HIWORD(flags), LOWORD(flags) ) ? flags : GDI_ERROR;
}
