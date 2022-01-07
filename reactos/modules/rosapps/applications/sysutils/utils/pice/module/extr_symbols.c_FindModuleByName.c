
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int name; scalar_t__ size; struct TYPE_5__* next; } ;
typedef TYPE_1__* PDEBUG_MODULE ;
typedef int LPSTR ;


 scalar_t__ BuildModuleList () ;
 int CP_ACP ;
 int DEBUG_MODULE_NAME_LEN ;
 int DPRINT (int ) ;
 int PICE_MultiByteToWideChar (int ,int *,int ,int,int *,int) ;
 scalar_t__ PICE_wcsicmp (int *,int ) ;
 TYPE_1__* pdebug_module_head ;
 TYPE_1__* pdebug_module_tail ;

PDEBUG_MODULE FindModuleByName(LPSTR modname)
{
    PDEBUG_MODULE pd;
 WCHAR tempstr[DEBUG_MODULE_NAME_LEN];

    DPRINT((0,"FindModuleFromAddress()\n"));
 if( !PICE_MultiByteToWideChar(CP_ACP, ((void*)0), modname, -1, tempstr, DEBUG_MODULE_NAME_LEN ) )
 {
  DPRINT((0,"Can't convert module name.\n"));
  return ((void*)0);
 }

    if(BuildModuleList())
    {
        pd = pdebug_module_head;
        do
        {
   if(pd->size)
   {
    if(PICE_wcsicmp(tempstr,pd->name) == 0)
                {
                    DPRINT((0,"FindModuleByName(): found %S\n",pd->name));
                    return pd;
                }
            }
        }while((pd = pd->next) != pdebug_module_tail);
    }

    return ((void*)0);
}
