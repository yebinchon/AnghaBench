
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int GetUserDefaultLangID () ;
 int LANG_CHINESE ;
 int LANG_JAPANESE ;
 int LANG_KOREAN ;
 int PRIMARYLANGID (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL is_cjk(void)
{
    int lang_id = PRIMARYLANGID(GetUserDefaultLangID());

    if (lang_id == LANG_CHINESE || lang_id == LANG_JAPANESE || lang_id == LANG_KOREAN)
        return TRUE;
    return FALSE;
}
