
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pPortName; } ;
typedef TYPE_1__ PORT_INFO_2W ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int EnumPortsW (int *,int,int *,int ,int *,int*) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 scalar_t__ RPC_S_SERVER_UNAVAILABLE ;
 scalar_t__ lstrcmpiW (int ,int ) ;
 int ok (int,char*,int) ;
 int * pi_buffer ;
 int pi_needed ;
 int pi_numports ;
 int win_skip (char*) ;

__attribute__((used)) static PORT_INFO_2W * find_portinfo2(LPCWSTR pPort)
{
    PORT_INFO_2W * pi;
    DWORD res;

    if (!pi_buffer) {
        res = EnumPortsW(((void*)0), 2, ((void*)0), 0, &pi_needed, &pi_numports);
        if (!res && (GetLastError() == RPC_S_SERVER_UNAVAILABLE)) {
            win_skip("The service 'Spooler' is required for many tests\n");
            return ((void*)0);
        }
        ok(!res, "EnumPorts succeeded: got %d\n", res);
        pi_buffer = HeapAlloc(GetProcessHeap(), 0, pi_needed);
        res = EnumPortsW(((void*)0), 2, pi_buffer, pi_needed, &pi_needed, &pi_numports);
        ok(res == 1, "EnumPorts failed: got %d\n", res);
    }
    if (pi_buffer) {
        pi = (PORT_INFO_2W *) pi_buffer;
        res = 0;
        while (pi_numports > res) {
            if (lstrcmpiW(pi->pPortName, pPort) == 0) {
                return pi;
            }
            pi++;
            res++;
        }
    }
    return ((void*)0);
}
