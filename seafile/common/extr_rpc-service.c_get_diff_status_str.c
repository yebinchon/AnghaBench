
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char DIFF_STATUS_ADDED ;
 char DIFF_STATUS_DELETED ;
 char DIFF_STATUS_DIR_ADDED ;
 char DIFF_STATUS_DIR_DELETED ;
 char DIFF_STATUS_MODIFIED ;
 char DIFF_STATUS_RENAMED ;

__attribute__((used)) inline static const char*
get_diff_status_str(char status)
{
    if (status == DIFF_STATUS_ADDED)
        return "add";
    if (status == DIFF_STATUS_DELETED)
        return "del";
    if (status == DIFF_STATUS_MODIFIED)
        return "mod";
    if (status == DIFF_STATUS_RENAMED)
        return "mov";
    if (status == DIFF_STATUS_DIR_ADDED)
        return "newdir";
    if (status == DIFF_STATUS_DIR_DELETED)
        return "deldir";
    return ((void*)0);
}
