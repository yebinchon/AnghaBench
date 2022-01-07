
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ui_level; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int BOOL ;


 int INSTALLUILEVEL_MASK ;
 int INSTALLUILEVEL_REDUCED ;

__attribute__((used)) static BOOL needs_ui_sequence(MSIPACKAGE *package)
{
    return (package->ui_level & INSTALLUILEVEL_MASK) >= INSTALLUILEVEL_REDUCED;
}
