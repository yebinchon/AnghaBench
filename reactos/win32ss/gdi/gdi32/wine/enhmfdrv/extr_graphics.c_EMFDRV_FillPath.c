
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int BOOL ;


 int EMR_FILLPATH ;
 int emfdrv_stroke_and_fill_path (int ,int ) ;

BOOL EMFDRV_FillPath( PHYSDEV dev )
{
    return emfdrv_stroke_and_fill_path( dev, EMR_FILLPATH );
}
