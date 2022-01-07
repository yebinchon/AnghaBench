
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {char* pName; } ;
typedef TYPE_1__ PORT_INFO_1W ;
typedef int * LPBYTE ;
typedef size_t DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int PORTNAME_MAXSIZE ;
 size_t PORTNAME_MINSIZE ;
 int PORTNAME_PREFIX ;
 char* have_com ;
 char* have_file ;
 char* have_lpt ;
 scalar_t__ lstrcmpiW (char*,int ) ;
 size_t lstrlenW (char*) ;
 int memcpy (char**,char*,size_t) ;
 size_t pEnumPorts (int *,int,int *,size_t,size_t*,size_t*) ;
 int portname_comW ;
 int portname_fileW ;
 int portname_lptW ;
 int skip (char*) ;

__attribute__((used)) static void find_installed_ports(void)
{
    PORT_INFO_1W * pi = ((void*)0);
    WCHAR nameW[PORTNAME_MAXSIZE];
    DWORD needed;
    DWORD returned;
    DWORD res;
    DWORD id;

    have_com[0] = '\0';
    have_lpt[0] = '\0';
    have_file[0] = '\0';

    if (!pEnumPorts) return;

    res = pEnumPorts(((void*)0), 1, ((void*)0), 0, &needed, &returned);
    if (!res && (GetLastError() == ERROR_INSUFFICIENT_BUFFER)) {
        pi = HeapAlloc(GetProcessHeap(), 0, needed);
    }
    res = pEnumPorts(((void*)0), 1, (LPBYTE) pi, needed, &needed, &returned);

    if (!res) {
        skip("no ports found\n");
        HeapFree(GetProcessHeap(), 0, pi);
        return;
    }

    id = 0;
    while (id < returned) {
        res = lstrlenW(pi[id].pName);
        if ((res >= PORTNAME_MINSIZE) && (res < PORTNAME_MAXSIZE) &&
            (pi[id].pName[res-1] == ':')) {

            memcpy(&nameW, pi[id].pName, PORTNAME_PREFIX * sizeof(WCHAR));
            nameW[PORTNAME_PREFIX] = '\0';

            if (!have_com[0] && (lstrcmpiW(nameW, portname_comW) == 0)) {
                memcpy(&have_com, pi[id].pName, (res+1) * sizeof(WCHAR));
            }

            if (!have_lpt[0] && (lstrcmpiW(nameW, portname_lptW) == 0)) {
                memcpy(&have_lpt, pi[id].pName, (res+1) * sizeof(WCHAR));
            }

            if (!have_file[0] && (lstrcmpiW(pi[id].pName, portname_fileW) == 0)) {
                memcpy(&have_file, pi[id].pName, (res+1) * sizeof(WCHAR));
            }
        }
        id++;
    }

    HeapFree(GetProcessHeap(), 0, pi);
}
