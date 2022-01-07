
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ detect_container () ;

__attribute__((used)) static bool swap_supported(void) {
        static int supported = -1;





        if (supported < 0)
                supported =
                        access("/proc/swaps", F_OK) >= 0 &&
                        detect_container() <= 0;

        return supported;
}
