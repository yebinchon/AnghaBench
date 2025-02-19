
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int emr ;
struct TYPE_8__ {int nSize; int iType; } ;
struct TYPE_5__ {void* bXHeight; void* bMidline; void* bLetterform; void* bArmStyle; void* bStrokeVariation; void* bContrast; void* bProportion; void* bWeight; void* bSerifStyle; void* bFamilyType; } ;
struct TYPE_6__ {char* elfFullName; char* elfStyle; TYPE_1__ elfPanose; int elfCulture; scalar_t__* elfVendorId; scalar_t__ elfReserved; scalar_t__ elfMatch; scalar_t__ elfStyleSize; scalar_t__ elfVersion; int elfLogFont; } ;
struct TYPE_7__ {TYPE_4__ emr; TYPE_2__ elfw; scalar_t__ ihFont; } ;
typedef int PHYSDEV ;
typedef int HFONT ;
typedef TYPE_3__ EMREXTCREATEFONTINDIRECTW ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int ELF_VENDOR_SIZE ;
 scalar_t__ EMFDRV_AddHandle (int ,int ) ;
 int EMFDRV_WriteRecord (int ,TYPE_4__*) ;
 int EMR_EXTCREATEFONTINDIRECTW ;
 scalar_t__ FALSE ;
 int GetObjectW (int ,int,int *) ;
 int PAN_CULTURE_LATIN ;
 void* PAN_NO_FIT ;

__attribute__((used)) static BOOL EMFDRV_CreateFontIndirect(PHYSDEV dev, HFONT hFont )
{
    DWORD index = 0;
    EMREXTCREATEFONTINDIRECTW emr;
    int i;

    if (!GetObjectW( hFont, sizeof(emr.elfw.elfLogFont), &emr.elfw.elfLogFont )) return FALSE;

    emr.emr.iType = EMR_EXTCREATEFONTINDIRECTW;
    emr.emr.nSize = (sizeof(emr) + 3) / 4 * 4;
    emr.ihFont = index = EMFDRV_AddHandle( dev, hFont );
    emr.elfw.elfFullName[0] = '\0';
    emr.elfw.elfStyle[0] = '\0';
    emr.elfw.elfVersion = 0;
    emr.elfw.elfStyleSize = 0;
    emr.elfw.elfMatch = 0;
    emr.elfw.elfReserved = 0;
    for(i = 0; i < ELF_VENDOR_SIZE; i++)
        emr.elfw.elfVendorId[i] = 0;
    emr.elfw.elfCulture = PAN_CULTURE_LATIN;
    emr.elfw.elfPanose.bFamilyType = PAN_NO_FIT;
    emr.elfw.elfPanose.bSerifStyle = PAN_NO_FIT;
    emr.elfw.elfPanose.bWeight = PAN_NO_FIT;
    emr.elfw.elfPanose.bProportion = PAN_NO_FIT;
    emr.elfw.elfPanose.bContrast = PAN_NO_FIT;
    emr.elfw.elfPanose.bStrokeVariation = PAN_NO_FIT;
    emr.elfw.elfPanose.bArmStyle = PAN_NO_FIT;
    emr.elfw.elfPanose.bLetterform = PAN_NO_FIT;
    emr.elfw.elfPanose.bMidline = PAN_NO_FIT;
    emr.elfw.elfPanose.bXHeight = PAN_NO_FIT;

    if(!EMFDRV_WriteRecord( dev, &emr.emr ))
        index = 0;
    return index;
}
