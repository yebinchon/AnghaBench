
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_string; } ;
typedef TYPE_1__ vlc_value_t ;


 int free (int ) ;

__attribute__((used)) static void FreeString( vlc_value_t *p_val ) { free( p_val->psz_string ); }
