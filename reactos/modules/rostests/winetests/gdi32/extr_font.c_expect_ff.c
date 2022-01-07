
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_8__ {int tmPitchAndFamily; } ;
struct TYPE_6__ {int bProportion; int bWeight; int bSerifStyle; int bFamilyType; } ;
struct TYPE_7__ {TYPE_1__ panose; } ;
typedef TYPE_2__ TT_OS2_V4 ;
typedef TYPE_3__ TEXTMETRICA ;


 int GetSystemDefaultLangID () ;
 scalar_t__ LANG_ENGLISH ;
 scalar_t__ PRIMARYLANGID (int ) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,char const*,int,int,int ,int ,int ,int ) ;

__attribute__((used)) static void expect_ff(const TEXTMETRICA *tmA, const TT_OS2_V4 *os2, WORD family, const char *name)
{
    ok((tmA->tmPitchAndFamily & 0xf0) == family ||
       broken(PRIMARYLANGID(GetSystemDefaultLangID()) != LANG_ENGLISH),
       "%s: expected family %02x got %02x. panose %d-%d-%d-%d-...\n",
       name, family, tmA->tmPitchAndFamily, os2->panose.bFamilyType, os2->panose.bSerifStyle,
       os2->panose.bWeight, os2->panose.bProportion);
}
