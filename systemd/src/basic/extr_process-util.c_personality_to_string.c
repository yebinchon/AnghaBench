
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PER_LINUX ;
 unsigned long PER_LINUX32 ;
 int SECONDARY_ARCHITECTURE ;
 int _ARCHITECTURE_INVALID ;
 char const* architecture_to_string (int) ;
 int native_architecture () ;

const char* personality_to_string(unsigned long p) {
        int architecture = _ARCHITECTURE_INVALID;

        if (p == PER_LINUX)
                architecture = native_architecture();





        if (architecture < 0)
                return ((void*)0);

        return architecture_to_string(architecture);
}
