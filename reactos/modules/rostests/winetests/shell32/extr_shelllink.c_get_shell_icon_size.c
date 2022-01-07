
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int HKEY_CURRENT_USER ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegOpenKeyA (int ,char*,int *) ;
 int RegQueryValueExA (int ,char*,int *,int*,int *,int*) ;
 int atoi (char*) ;

__attribute__((used)) static int get_shell_icon_size(void)
{
    char buf[10];
    DWORD value = 32, size = sizeof(buf), type;
    HKEY key;

    if (!RegOpenKeyA( HKEY_CURRENT_USER, "Control Panel\\Desktop\\WindowMetrics", &key ))
    {
        if (!RegQueryValueExA( key, "Shell Icon Size", ((void*)0), &type, (BYTE *)buf, &size ) && type == REG_SZ)
            value = atoi( buf );
        RegCloseKey( key );
    }
    return value;
}
