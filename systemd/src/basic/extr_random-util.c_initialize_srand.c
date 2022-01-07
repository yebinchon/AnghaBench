
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AT_RANDOM ;
 int CLOCK_REALTIME ;
 void* ULONG_TO_PTR (int ) ;
 int getauxval (int ) ;
 scalar_t__ gettid () ;
 scalar_t__ now (int ) ;
 scalar_t__ rdrand (unsigned long*) ;
 scalar_t__ siphash24 (void const*,int,int const*) ;
 int srand (unsigned int) ;

void initialize_srand(void) {
        static bool srand_called = 0;
        unsigned x;



        unsigned long k;

        if (srand_called)
                return;
                x = 0;

        x ^= (unsigned) now(CLOCK_REALTIME);
        x ^= (unsigned) gettid();

        if (rdrand(&k) >= 0)
                x ^= (unsigned) k;

        srand(x);
        srand_called = 1;
}
