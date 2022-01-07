
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ GDEF_Table; scalar_t__ GPOS_Table; scalar_t__ GSUB_Table; } ;
typedef TYPE_1__ ScriptCache ;
typedef int HDC ;


 scalar_t__ load_gdef_table (int ) ;
 scalar_t__ load_gpos_table (int ) ;
 scalar_t__ load_gsub_table (int ) ;

__attribute__((used)) static VOID load_ot_tables(HDC hdc, ScriptCache *psc)
{
    if (!psc->GSUB_Table)
        psc->GSUB_Table = load_gsub_table(hdc);
    if (!psc->GPOS_Table)
        psc->GPOS_Table = load_gpos_table(hdc);
    if (!psc->GDEF_Table)
        psc->GDEF_Table = load_gdef_table(hdc);
}
