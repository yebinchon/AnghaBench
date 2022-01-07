
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Height; int Width; int Y; int X; } ;
typedef TYPE_1__ WICRect ;


 char const* wine_dbg_sprintf (char*,int ,int ,int ,int ) ;

__attribute__((used)) static inline const char *debug_wic_rect(const WICRect *rect)
{
    if (!rect) return "(null)";
    return wine_dbg_sprintf("(%u,%u)-(%u,%u)", rect->X, rect->Y, rect->Width, rect->Height);
}
