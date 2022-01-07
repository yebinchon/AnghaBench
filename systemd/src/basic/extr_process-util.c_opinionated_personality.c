
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERSONALITY_INVALID ;
 unsigned long PER_LINUX ;
 unsigned long PER_LINUX32 ;
 int safe_personality (int ) ;

int opinionated_personality(unsigned long *ret) {
        int current;





        current = safe_personality(PERSONALITY_INVALID);
        if (current < 0)
                return current;

        if (((unsigned long) current & 0xffff) == PER_LINUX32)
                *ret = PER_LINUX32;
        else
                *ret = PER_LINUX;

        return 0;
}
