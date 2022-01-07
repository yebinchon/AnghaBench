
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct list {int dummy; } ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {struct list* tabledata; int * merge; int * db; } ;
struct TYPE_6__ {int hdr; } ;
typedef TYPE_1__ MSIQUERY ;
typedef int MSIDATABASE ;
typedef TYPE_2__ MERGEDATA ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MSI_DatabaseOpenViewW (int *,char const*,TYPE_1__**) ;
 scalar_t__ MSI_IterateRecords (TYPE_1__*,int *,int ,TYPE_2__*) ;
 int merge_diff_tables ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT gather_merge_data(MSIDATABASE *db, MSIDATABASE *merge,
                              struct list *tabledata)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','_','T','a','b','l','e','s','`',0};
    MSIQUERY *view;
    MERGEDATA data;
    UINT r;

    r = MSI_DatabaseOpenViewW(merge, query, &view);
    if (r != ERROR_SUCCESS)
        return r;

    data.db = db;
    data.merge = merge;
    data.tabledata = tabledata;
    r = MSI_IterateRecords(view, ((void*)0), merge_diff_tables, &data);
    msiobj_release(&view->hdr);
    return r;
}
