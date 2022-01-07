
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Attributes; } ;
typedef int REGSAM ;
typedef TYPE_1__ MSICOMPONENT ;


 int KEY_WOW64_32KEY ;
 int KEY_WOW64_64KEY ;
 scalar_t__ is_64bit ;
 scalar_t__ is_wow64 ;
 int msidbComponentAttributes64bit ;

__attribute__((used)) static inline REGSAM get_registry_view( const MSICOMPONENT *comp )
{
    REGSAM view = 0;
    if (is_wow64 || is_64bit)
        view |= (comp->Attributes & msidbComponentAttributes64bit) ? KEY_WOW64_64KEY : KEY_WOW64_32KEY;
    return view;
}
