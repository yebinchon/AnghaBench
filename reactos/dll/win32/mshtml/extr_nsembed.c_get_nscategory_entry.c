
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;


 scalar_t__ NS_SUCCEEDED (int ) ;
 int cat_mgr ;
 int nsICategoryManager_GetCategoryEntry (int ,char const*,char const*,char**) ;

char *get_nscategory_entry(const char *category, const char *entry)
{
    char *ret = ((void*)0);
    nsresult nsres;

    nsres = nsICategoryManager_GetCategoryEntry(cat_mgr, category, entry, &ret);
    return NS_SUCCEEDED(nsres) ? ret : ((void*)0);
}
