
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int assert_not_reached (char*) ;

__attribute__((used)) static bool same_field(const void *_a, size_t s, const void *_b, size_t t) {
        const uint8_t *a = _a, *b = _b;
        size_t j;

        for (j = 0; j < s && j < t; j++) {

                if (a[j] != b[j])
                        return 0;

                if (a[j] == '=')
                        return 1;
        }

        assert_not_reached("\"=\" not found");
}
