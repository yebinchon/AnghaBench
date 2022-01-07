
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* table; } ;
struct TYPE_2__ {int name; } ;
typedef int BSTR ;


 int SysAllocString (int ) ;

__attribute__((used)) static BSTR build_classname( const struct view *view )
{
    return SysAllocString( view->table->name );
}
