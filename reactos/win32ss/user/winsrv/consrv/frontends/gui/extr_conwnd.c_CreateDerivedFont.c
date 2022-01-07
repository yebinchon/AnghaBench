
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lf ;
typedef int ULONG ;
struct TYPE_5__ {void* lfStrikeOut; void* lfUnderline; int lfWeight; } ;
typedef TYPE_1__ LOGFONTW ;
typedef int * HFONT ;
typedef void* BOOLEAN ;


 int * CreateFontIndirectW (TYPE_1__*) ;
 scalar_t__ GetObjectW (int *,int,TYPE_1__*) ;
 int RtlZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static HFONT
CreateDerivedFont(HFONT OrgFont,

                  ULONG FontWeight,

                  BOOLEAN bUnderline,
                  BOOLEAN bStrikeOut)
{
    LOGFONTW lf;


    RtlZeroMemory(&lf, sizeof(lf));


    if (GetObjectW(OrgFont, sizeof(lf), &lf) == 0)
        return ((void*)0);




    lf.lfWeight = FontWeight;

    lf.lfUnderline = bUnderline;
    lf.lfStrikeOut = bStrikeOut;


    return CreateFontIndirectW(&lf);
}
