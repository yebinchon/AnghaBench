
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sfp; } ;
typedef TYPE_1__ ScriptCache ;
typedef int SCRIPT_FONTPROPERTIES ;



__attribute__((used)) static inline void get_cache_font_properties(SCRIPT_FONTPROPERTIES *sfp, ScriptCache *sc)
{
    *sfp = sc->sfp;
}
