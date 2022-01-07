
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int META_SETTEXTJUSTIFICATION ;
 int MFDRV_MetaParam2 (int ,int ,int ,int ) ;

BOOL MFDRV_SetTextJustification( PHYSDEV dev, INT extra, INT breaks )
{
    return MFDRV_MetaParam2( dev, META_SETTEXTJUSTIFICATION, extra, breaks );
}
