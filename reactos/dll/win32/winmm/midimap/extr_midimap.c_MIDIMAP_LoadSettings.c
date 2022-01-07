
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int out ;
typedef int buffer ;
typedef char WCHAR ;
struct TYPE_7__ {TYPE_1__** ChannelMap; } ;
struct TYPE_6__ {int uDevID; } ;
typedef TYPE_2__ MIDIMAPDATA ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 int HKEY_CURRENT_USER ;
 int MIDIMAP_LoadSettingsDefault (TYPE_2__*,char*) ;
 int MIDIMAP_LoadSettingsScheme (TYPE_2__*,char*) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 int RegQueryValueExA (int ,char*,int ,int*,void*,int*) ;
 int RegQueryValueExW (int ,char const*,int ,int*,void*,int*) ;
 int TRACE (char*,unsigned int,int) ;
 scalar_t__ TRACE_ON (int ) ;
 int msacm ;

__attribute__((used)) static BOOL MIDIMAP_LoadSettings(MIDIMAPDATA* mom)
{
    HKEY hKey;
    BOOL ret;

    if (RegOpenKeyA(HKEY_CURRENT_USER,
      "Software\\Microsoft\\Windows\\CurrentVersion\\Multimedia\\MIDIMap", &hKey))
    {
 ret = MIDIMAP_LoadSettingsDefault(mom, ((void*)0));
    }
    else
    {
 DWORD type, size, out;
 WCHAR buffer[256];

 ret = 2;
 size = sizeof(out);
 if (!RegQueryValueExA(hKey, "UseScheme", 0, &type, (void*)&out, &size) && out)
 {
            static const WCHAR cs[] = {'C','u','r','r','e','n','t','S','c','h','e','m','e',0};
     size = sizeof(buffer);
     if (!RegQueryValueExW(hKey, cs, 0, &type, (void*)buffer, &size))
     {
  if (!(ret = MIDIMAP_LoadSettingsScheme(mom, buffer)))
      ret = MIDIMAP_LoadSettingsDefault(mom, ((void*)0));
     }
     else
     {
  ERR("Wrong registry: UseScheme is active, but no CurrentScheme found\n");
     }
 }
 if (ret == 2)
 {
            static const WCHAR ci[] = {'C','u','r','r','e','n','t','I','n','s','t','r','u','m','e','n','t',0};
     size = sizeof(buffer);
     if (!RegQueryValueExW(hKey, ci, 0, &type, (void*)buffer, &size) && *buffer)
     {
  ret = MIDIMAP_LoadSettingsDefault(mom, buffer);
     }
     else if (!RegQueryValueExW(hKey, L"szPname", 0, &type, (void*)buffer, &size) && *buffer)
     {

  ret = MIDIMAP_LoadSettingsDefault(mom, buffer);
     }
     else
     {
  ret = MIDIMAP_LoadSettingsDefault(mom, ((void*)0));
     }
 }
    }
    RegCloseKey(hKey);

    if (ret && TRACE_ON(msacm))
    {
 unsigned i;

 for (i = 0; i < 16; i++)
 {
     TRACE("chnMap[%2d] => %d\n",
    i, mom->ChannelMap[i] ? mom->ChannelMap[i]->uDevID : -1);
 }
    }
    return ret;
}
