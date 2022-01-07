
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ VBScript ;
typedef int BOOL ;


 scalar_t__ SCRIPTSTATE_CONNECTED ;
 scalar_t__ SCRIPTSTATE_DISCONNECTED ;
 scalar_t__ SCRIPTSTATE_STARTED ;

__attribute__((used)) static inline BOOL is_started(VBScript *This)
{
    return This->state == SCRIPTSTATE_STARTED
        || This->state == SCRIPTSTATE_CONNECTED
        || This->state == SCRIPTSTATE_DISCONNECTED;
}
