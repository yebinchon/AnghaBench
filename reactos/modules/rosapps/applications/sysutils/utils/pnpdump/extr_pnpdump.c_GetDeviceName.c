
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* DeviceName; int * PnpId; } ;
typedef TYPE_1__* PPNP_ID_NAME ;


 TYPE_1__* PnpName ;
 int strcmp (int *,char*) ;

__attribute__((used)) static char *
GetDeviceName(char *PnpId)
{
  PPNP_ID_NAME IdName;

  IdName = PnpName;
  while (IdName->PnpId != ((void*)0))
    {
      if (!strcmp(IdName->PnpId, PnpId))
 return IdName->DeviceName;

      IdName++;
    }

  return "Unknown Device";
}
