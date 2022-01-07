
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int assert_not_reached (char*) ;
 int memcpy (char*,char const*,size_t) ;
 int signature_element_length (char const*,size_t*) ;

int bus_gvariant_is_fixed_size(const char *signature) {
        const char *p;
        int r;

        assert(signature);

        p = signature;
        while (*p != 0) {
                size_t n;

                r = signature_element_length(p, &n);
                if (r < 0)
                        return r;

                switch (*p) {

                case 134:
                case 136:
                case 135:
                case 144:
                case 128:
                        return 0;

                case 142:
                case 143:
                case 139:
                case 132:
                case 138:
                case 131:
                case 129:
                case 137:
                case 130:
                case 140:
                        break;

                case 133:
                case 141: {
                        char t[n-1];

                        memcpy(t, p + 1, n - 2);
                        t[n - 2] = 0;

                        r = bus_gvariant_is_fixed_size(t);
                        if (r <= 0)
                                return r;
                        break;
                }

                default:
                        assert_not_reached("Unknown signature type");
                }

                p += n;
        }

        return 1;
}
