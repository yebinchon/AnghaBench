
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ELEMENTSOF (int*) ;
 int* mask ;

__attribute__((used)) static bool mask_contains(unsigned a[], unsigned n) {
        unsigned i, j;

        for (i = 0; i < ELEMENTSOF(mask); i++) {
                bool found = 0;

                for (j = 0; j < n; j++)
                        if (a[j] == i) {
                                found = 1;
                                break;
                        }

                if (found != mask[i])
                        return 0;
        }

        return 1;
}
