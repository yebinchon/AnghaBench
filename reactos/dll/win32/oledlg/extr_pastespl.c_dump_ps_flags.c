
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_flag {char* name; int flag; } ;
typedef int DWORD ;


 int TRACE (char*,int,char*) ;
 struct ps_flag* ps_flags ;
 int strcat (char*,char*) ;

__attribute__((used)) static void dump_ps_flags(DWORD flags)
{
    char flagstr[1000] = "";

    const struct ps_flag *flag = ps_flags;
    for( ; flag->name; flag++) {
        if(flags & flag->flag) {
            strcat(flagstr, flag->name);
            strcat(flagstr, "|");
        }
    }
    TRACE("flags %08x %s\n", flags, flagstr);
}
