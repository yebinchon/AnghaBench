
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msxmlsupported_data_t {int supported; int const* clsid; } ;
typedef int GUID ;
typedef int BOOL ;


 int FALSE ;

__attribute__((used)) static BOOL is_clsid_supported(const GUID *clsid, const struct msxmlsupported_data_t *table)
{
    while (table->clsid)
    {
        if (table->clsid == clsid) return table->supported;
        table++;
    }
    return FALSE;
}
