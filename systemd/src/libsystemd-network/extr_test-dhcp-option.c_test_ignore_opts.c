
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;





 int assert (int) ;

__attribute__((used)) static void test_ignore_opts(uint8_t *descoption, int *descpos, int *desclen) {
        assert(*descpos >= 0);

        while (*descpos < *desclen) {
                switch(descoption[*descpos]) {
                case 128:
                        *descpos += 1;
                        break;

                case 130:
                case 129:
                        *descpos += 3;
                        break;

                default:
                        return;
                }
        }
}
