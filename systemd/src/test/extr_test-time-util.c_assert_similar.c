
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;


 int USEC_PER_SEC ;
 int assert (int) ;

__attribute__((used)) static void assert_similar(usec_t a, usec_t b) {
        usec_t d;

        if (a > b)
                d = a - b;
        else
                d = b - a;

        assert(d < 10*USEC_PER_SEC);
}
