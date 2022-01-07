
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ed; } ;
typedef TYPE_1__ Mode ;
typedef int DmenuScriptEntry ;


 int * get_script_output (TYPE_1__*,int ,char*,unsigned int*) ;

__attribute__((used)) static DmenuScriptEntry *execute_executor ( Mode *sw, char *result, unsigned int *length )
{
    DmenuScriptEntry *retv = get_script_output ( sw, sw->ed, result, length );
    return retv;
}
