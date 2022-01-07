
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int n; int element_size; scalar_t__ data; } ;
typedef TYPE_1__ BS_LIST ;


 int INDEX (int) ;
 int memcmp (int const*,scalar_t__,int) ;

__attribute__((used)) static int find(const BS_LIST *list, const uint8_t *data)
{

    if (list->n == 0) {
        return INDEX(0);
    }

    uint32_t i = list->n / 2;
    uint32_t delta = i / 2;

    if (!delta) {
        delta = 1;
    }

    int d = -1;


    while (1) {
        int r = memcmp(data, list->data + list->element_size * i, list->element_size);

        if (r == 0) {
            return i;
        }

        if (r > 0) {


            i += delta;

            if (d == 0 || i == list->n) {

                return INDEX(i);
            }

            delta = (delta) / 2;

            if (delta == 0) {
                delta = 1;
                d = 1;
            }
        } else {

            if (d == 1 || i == 0) {

                return INDEX(i);
            }


            i -= delta;

            delta = (delta) / 2;

            if (delta == 0) {
                delta = 1;
                d = 0;
            }
        }
    }
}
