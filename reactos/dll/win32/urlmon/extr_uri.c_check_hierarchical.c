
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL check_hierarchical(const WCHAR **ptr) {
    const WCHAR *start = *ptr;

    if(**ptr != '/')
        return FALSE;

    ++(*ptr);
    if(**ptr != '/') {
        *ptr = start;
        return FALSE;
    }

    ++(*ptr);
    return TRUE;
}
