
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int url; int secmgr; } ;
typedef TYPE_1__ HTMLOuterWindow ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int IInternetSecurityManager_MapUrlToZone (int ,int ,scalar_t__*,int ) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 scalar_t__ URLZONE_UNTRUSTED ;
 int WARN (char*,int ,int ) ;
 int debugstr_w (int ) ;

__attribute__((used)) static BOOL use_gecko_script(HTMLOuterWindow *window)
{
    DWORD zone;
    HRESULT hres;

    hres = IInternetSecurityManager_MapUrlToZone(window->secmgr, window->url, &zone, 0);
    if(FAILED(hres)) {
        WARN("Could not map %s to zone: %08x\n", debugstr_w(window->url), hres);
        return TRUE;
    }

    TRACE("zone %d\n", zone);
    return zone == URLZONE_UNTRUSTED;
}
