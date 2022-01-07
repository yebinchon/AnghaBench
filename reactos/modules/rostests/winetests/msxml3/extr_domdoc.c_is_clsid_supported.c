
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msxmlsupported_data_t {int * supported; int ** ifaces; int const* clsid; } ;
typedef int * REFIID ;
typedef int GUID ;
typedef int BOOL ;


 int ARRAY_SIZE (int **) ;
 int FALSE ;
 struct msxmlsupported_data_t* domdoc_support_data ;

__attribute__((used)) static BOOL is_clsid_supported(const GUID *clsid, REFIID riid)
{
    const struct msxmlsupported_data_t *table = domdoc_support_data;
    while (table->clsid)
    {
        if (table->clsid == clsid)
        {
            int i;

            for (i = 0; i < ARRAY_SIZE(table->ifaces) && table->ifaces[i] != ((void*)0); i++)
                if (table->ifaces[i] == riid) return table->supported[i];
        }

        table++;
    }
    return FALSE;
}
