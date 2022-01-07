
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_categories {int size; int impl_offset; int req_offset; } ;
typedef int WCHAR ;
typedef int ULONG ;
typedef int CATID ;


 int CHARS_IN_GUID ;
 int GetProcessHeap () ;
 struct class_categories* HeapAlloc (int ,int ,int) ;
 int StringFromGUID2 (int ,int *,int) ;

__attribute__((used)) static struct class_categories *COMCAT_PrepareClassCategories(
    ULONG impl_count, const CATID *impl_catids, ULONG req_count, const CATID *req_catids)
{
    struct class_categories *categories;
    WCHAR *strings;
    ULONG size;

    size = sizeof(struct class_categories) + ((impl_count + req_count)*CHARS_IN_GUID + 2)*sizeof(WCHAR);
    categories = HeapAlloc(GetProcessHeap(), 0, size);
    if (categories == ((void*)0)) return categories;

    categories->size = size;
    categories->impl_offset = sizeof(struct class_categories);
    categories->req_offset = categories->impl_offset + (impl_count*CHARS_IN_GUID + 1)*sizeof(WCHAR);

    strings = (WCHAR *)(categories + 1);
    while (impl_count--) {
 StringFromGUID2(impl_catids++, strings, CHARS_IN_GUID);
 strings += CHARS_IN_GUID;
    }
    *strings++ = 0;

    while (req_count--) {
 StringFromGUID2(req_catids++, strings, CHARS_IN_GUID);
 strings += CHARS_IN_GUID;
    }
    *strings++ = 0;

    return categories;
}
