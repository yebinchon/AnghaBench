
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_7__ {int name; } ;
typedef TYPE_1__ Mode ;


 int FALSE ;
 int TRUE ;
 TYPE_1__** available_modi ;
 TYPE_1__** g_realloc (TYPE_1__**,int) ;
 int num_available_modi ;
 TYPE_1__* rofi_collect_modi_search (int ) ;

__attribute__((used)) static gboolean rofi_collect_modi_add ( Mode *mode )
{
    Mode *m = rofi_collect_modi_search ( mode->name );
    if ( m == ((void*)0) ) {
        available_modi = g_realloc ( available_modi, sizeof ( Mode * ) * ( num_available_modi + 1 ) );

        available_modi[num_available_modi] = mode;
        num_available_modi++;
        return TRUE;
    }
    return FALSE;
}
