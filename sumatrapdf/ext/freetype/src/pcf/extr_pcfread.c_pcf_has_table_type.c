
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t type; } ;
typedef TYPE_1__* PCF_Table ;
typedef size_t FT_ULong ;
typedef int FT_Bool ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static FT_Bool
  pcf_has_table_type( PCF_Table tables,
                      FT_ULong ntables,
                      FT_ULong type )
  {
    FT_ULong i;


    for ( i = 0; i < ntables; i++ )
      if ( tables[i].type == type )
        return TRUE;

    return FALSE;
  }
