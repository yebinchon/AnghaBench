
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ URL_SCHEME ;
struct TYPE_3__ {scalar_t__ scheme; scalar_t__ port; } ;
typedef size_t DWORD ;
typedef int BOOL ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int FALSE ;
 int TRUE ;
 TYPE_1__* default_ports ;

__attribute__((used)) static BOOL is_default_port(URL_SCHEME scheme, DWORD port) {
    DWORD i;

    for(i = 0; i < ARRAY_SIZE(default_ports); ++i) {
        if(default_ports[i].scheme == scheme && default_ports[i].port)
            return TRUE;
    }

    return FALSE;
}
