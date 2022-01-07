
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef scalar_t__ locale_t ;


 int LC_NUMERIC_MASK ;
 int freelocale (scalar_t__) ;
 scalar_t__ newlocale (int ,char*,int *) ;
 int sscanf (char const*,char*,...) ;
 scalar_t__ uselocale (scalar_t__) ;
 int vlc_tick_from_sec (float) ;

__attribute__((used)) static vlc_tick_t ParseNPT (const char *str)
{
    locale_t loc = newlocale (LC_NUMERIC_MASK, "C", ((void*)0));
    locale_t oldloc = uselocale (loc);
    unsigned hour, min;
    float sec;

    if (sscanf (str, "%u:%u:%f", &hour, &min, &sec) == 3)
        sec += ((hour * 60) + min) * 60;
    else
    if (sscanf (str, "%f", &sec) != 1)
        sec = 0.;

    if (loc != (locale_t)0)
    {
        uselocale (oldloc);
        freelocale (loc);
    }
    return vlc_tick_from_sec( sec );
}
