
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int GDILOOBJTYPE ;


 int GDILoObjType_LO_ALTDC_TYPE ;
 int GDILoObjType_LO_BITMAP_TYPE ;
 int GDILoObjType_LO_BRUSH_TYPE ;
 int GDILoObjType_LO_DC_TYPE ;
 int GDILoObjType_LO_EXTPEN_TYPE ;
 int GDILoObjType_LO_FONT_TYPE ;
 int GDILoObjType_LO_ICMLCS_TYPE ;
 int GDILoObjType_LO_METADC16_TYPE ;
 int GDILoObjType_LO_METAFILE16_TYPE ;
 int GDILoObjType_LO_METAFILE_TYPE ;
 int GDILoObjType_LO_PALETTE_TYPE ;
 int GDILoObjType_LO_PEN_TYPE ;
 int GDILoObjType_LO_REGION_TYPE ;
__attribute__((used)) static
GDILOOBJTYPE
ConvertObjectType(
    WORD wType)
{

    switch (wType)
    {
        case 129: return GDILoObjType_LO_PEN_TYPE;
        case 140: return GDILoObjType_LO_BRUSH_TYPE;
        case 138: return GDILoObjType_LO_DC_TYPE;
        case 132: return GDILoObjType_LO_METADC16_TYPE;
        case 130: return GDILoObjType_LO_PALETTE_TYPE;
        case 134: return GDILoObjType_LO_FONT_TYPE;
        case 141: return GDILoObjType_LO_BITMAP_TYPE;
        case 128: return GDILoObjType_LO_REGION_TYPE;
        case 131: return GDILoObjType_LO_METAFILE16_TYPE;
        case 133: return GDILoObjType_LO_DC_TYPE;
        case 135: return GDILoObjType_LO_EXTPEN_TYPE;
        case 137: return GDILoObjType_LO_ALTDC_TYPE;
        case 136: return GDILoObjType_LO_METAFILE_TYPE;
        case 139: return GDILoObjType_LO_ICMLCS_TYPE;
        default: return 0;
    }
}
