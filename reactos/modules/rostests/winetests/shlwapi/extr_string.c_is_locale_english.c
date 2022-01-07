
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int GetUserDefaultLangID () ;
 scalar_t__ LANG_ENGLISH ;
 scalar_t__ PRIMARYLANGID (int ) ;

__attribute__((used)) static BOOL is_locale_english(void)
{

    return PRIMARYLANGID(GetUserDefaultLangID()) == LANG_ENGLISH;
}
