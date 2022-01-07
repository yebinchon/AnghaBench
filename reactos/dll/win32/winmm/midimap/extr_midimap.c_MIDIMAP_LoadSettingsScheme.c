
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int port ;
typedef int mask ;
typedef int buffer ;
typedef int const WCHAR ;
struct TYPE_3__ {int ** ChannelMap; } ;
typedef TYPE_1__ MIDIMAPDATA ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,unsigned int) ;
 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int MIDIMAP_FindPort (int const*,unsigned int*) ;
 int RegCloseKey (int ) ;
 int RegEnumKeyW (int ,unsigned int,int const*,int) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 scalar_t__ RegOpenKeyW (int ,int const*,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int ,int*,void*,int*) ;
 scalar_t__ RegQueryValueExW (int ,int *,int ,int*,void*,int*) ;
 int TRUE ;
 int * midiOutPorts ;

__attribute__((used)) static BOOL MIDIMAP_LoadSettingsScheme(MIDIMAPDATA* mom, const WCHAR* scheme)
{
    HKEY hSchemesKey, hKey, hPortKey;
    unsigned i, idx, dev;
    WCHAR buffer[256], port[256];
    DWORD type, size, mask;

    for (i = 0; i < 16; i++) mom->ChannelMap[i] = ((void*)0);

    if (RegOpenKeyA(HKEY_LOCAL_MACHINE,
      "System\\CurrentControlSet\\Control\\MediaProperties\\PrivateProperties\\Midi\\Schemes",
      &hSchemesKey))
    {
 return FALSE;
    }
    if (RegOpenKeyW(hSchemesKey, scheme, &hKey))
    {
 RegCloseKey(hSchemesKey);
 return FALSE;
    }

    for (idx = 0; !RegEnumKeyW(hKey, idx, buffer, sizeof(buffer)); idx++)
    {
 if (RegOpenKeyW(hKey, buffer, &hPortKey)) continue;

 size = sizeof(port);
 if (RegQueryValueExW(hPortKey, ((void*)0), 0, &type, (void*)port, &size)) continue;

 if (!MIDIMAP_FindPort(port, &dev)) continue;

 size = sizeof(mask);
 if (RegQueryValueExA(hPortKey, "Channels", 0, &type, (void*)&mask, &size))
     continue;

 for (i = 0; i < 16; i++)
 {
     if (mask & (1 << i))
     {
  if (mom->ChannelMap[i])
      ERR("Quirks in registry, channel %u is mapped twice\n", i);
  mom->ChannelMap[i] = &midiOutPorts[dev];
     }
 }
    }

    RegCloseKey(hSchemesKey);
    RegCloseKey(hKey);

    return TRUE;
}
