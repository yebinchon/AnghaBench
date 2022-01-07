
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pref ;
typedef int WCHAR ;
typedef int DWORD ;


 int PRIVACY_TEMPLATE_ADVANCED ;
 int ok (int,char*,int) ;
 int pPrivacyGetZonePreferenceW (int,int,int*,int *,int*) ;
 int pPrivacySetZonePreferenceW (int,int,int,int *) ;
 int trace (char*,int) ;

__attribute__((used)) static void test_PrivacyGetSetZonePreferenceW(void)
{
    DWORD ret, zone, type, template, old_template, pref_size = 0;
    WCHAR pref[256];

    zone = 3;
    type = 0;
    ret = pPrivacyGetZonePreferenceW(zone, type, ((void*)0), ((void*)0), ((void*)0));
    ok(ret == 0, "expected ret == 0, got %u\n", ret);

    old_template = 0;
    ret = pPrivacyGetZonePreferenceW(zone, type, &old_template, ((void*)0), ((void*)0));
    ok(ret == 0, "expected ret == 0, got %u\n", ret);

    trace("template %u\n", old_template);

    if(old_template == PRIVACY_TEMPLATE_ADVANCED) {
        pref_size = sizeof(pref)/sizeof(WCHAR);
        ret = pPrivacyGetZonePreferenceW(zone, type, &old_template, pref, &pref_size);
        ok(ret == 0, "expected ret == 0, got %u\n", ret);
    }

    template = 5;
    ret = pPrivacySetZonePreferenceW(zone, type, template, ((void*)0));
    ok(ret == 0, "expected ret == 0, got %u\n", ret);

    template = 0;
    ret = pPrivacyGetZonePreferenceW(zone, type, &template, ((void*)0), ((void*)0));
    ok(ret == 0, "expected ret == 0, got %u\n", ret);
    ok(template == 5, "expected template == 5, got %u\n", template);

    template = 5;
    ret = pPrivacySetZonePreferenceW(zone, type, old_template, pref_size ? pref : ((void*)0));
    ok(ret == 0, "expected ret == 0, got %u\n", ret);
}
