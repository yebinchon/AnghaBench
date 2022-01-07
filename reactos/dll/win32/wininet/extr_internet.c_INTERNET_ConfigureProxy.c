
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int proxyPassword; int proxyUsername; int proxyBypass; int proxy; scalar_t__ proxyEnabled; } ;
typedef TYPE_1__ proxyinfo_t ;
struct TYPE_7__ {int accessType; int proxyPassword; int proxyUsername; int proxyBypass; int proxy; } ;
typedef TYPE_2__ appinfo_t ;
typedef int BOOL ;


 int FALSE ;
 int FreeProxyInfo (TYPE_1__*) ;
 scalar_t__ INTERNET_LoadProxySettings (TYPE_1__*) ;
 int INTERNET_OPEN_TYPE_DIRECT ;
 int INTERNET_OPEN_TYPE_PROXY ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;

__attribute__((used)) static BOOL INTERNET_ConfigureProxy( appinfo_t *lpwai )
{
    proxyinfo_t wpi;

    if (INTERNET_LoadProxySettings( &wpi ))
        return FALSE;

    if (wpi.proxyEnabled)
    {
        TRACE("http proxy = %s bypass = %s\n", debugstr_w(wpi.proxy), debugstr_w(wpi.proxyBypass));

        lpwai->accessType = INTERNET_OPEN_TYPE_PROXY;
        lpwai->proxy = wpi.proxy;
        lpwai->proxyBypass = wpi.proxyBypass;
        lpwai->proxyUsername = wpi.proxyUsername;
        lpwai->proxyPassword = wpi.proxyPassword;
        return TRUE;
    }

    lpwai->accessType = INTERNET_OPEN_TYPE_DIRECT;
    FreeProxyInfo(&wpi);
    return FALSE;
}
