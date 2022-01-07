
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;

__attribute__((used)) static bool srv_type_label_is_valid(const char *label, size_t n) {
        size_t k;

        assert(label);

        if (n < 2)
                return 0;

        if (label[0] != '_')
                return 0;


        if (!(label[1] >= 'A' && label[1] <= 'Z') &&
            !(label[1] >= 'a' && label[1] <= 'z'))
                return 0;


        for (k = 2; k < n; k++) {
                if (!(label[k] >= 'A' && label[k] <= 'Z') &&
                    !(label[k] >= 'a' && label[k] <= 'z') &&
                    !(label[k] >= '0' && label[k] <= '9') &&
                    label[k] != '-')
                        return 0;
        }

        return 1;
}
