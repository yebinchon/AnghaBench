
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PERSONALITY_INVALID ;
 unsigned long PER_LINUX ;
 unsigned long PER_LINUX32 ;
 int SECONDARY_ARCHITECTURE ;
 int architecture_from_string (char const*) ;
 int native_architecture () ;

unsigned long personality_from_string(const char *p) {
        int architecture;

        if (!p)
                return PERSONALITY_INVALID;





        architecture = architecture_from_string(p);
        if (architecture < 0)
                return PERSONALITY_INVALID;

        if (architecture == native_architecture())
                return PER_LINUX;





        return PERSONALITY_INVALID;
}
