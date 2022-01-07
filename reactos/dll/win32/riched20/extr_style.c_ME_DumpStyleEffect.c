
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwMask; int dwEffects; } ;
typedef TYPE_1__ CHARFORMAT2W ;


 int sprintf (char*,char*,char const*,char*) ;

__attribute__((used)) static void ME_DumpStyleEffect(char **p, const char *name, const CHARFORMAT2W *fmt, int mask)
{
  *p += sprintf(*p, "%-22s%s\n", name, (fmt->dwMask & mask) ? ((fmt->dwEffects & mask) ? "YES" : "no") : "N/A");
}
