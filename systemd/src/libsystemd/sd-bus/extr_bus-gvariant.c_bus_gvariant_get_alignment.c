
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int assert_not_reached (char*) ;
 int memcpy (char*,char const*,size_t) ;
 int signature_element_length (char const*,size_t*) ;

int bus_gvariant_get_alignment(const char *signature) {
        size_t alignment = 1;
        const char *p;
        int r;

        p = signature;
        while (*p != 0 && alignment < 8) {
                size_t n;
                int a;

                r = signature_element_length(p, &n);
                if (r < 0)
                        return r;

                switch (*p) {

                case 142:
                case 143:
                case 134:
                case 136:
                case 135:
                        a = 1;
                        break;

                case 139:
                case 132:
                        a = 2;
                        break;

                case 138:
                case 131:
                case 129:
                        a = 4;
                        break;

                case 137:
                case 130:
                case 140:
                case 128:
                        a = 8;
                        break;

                case 144: {
                        char t[n];

                        memcpy(t, p + 1, n - 1);
                        t[n - 1] = 0;

                        a = bus_gvariant_get_alignment(t);
                        break;
                }

                case 133:
                case 141: {
                        char t[n-1];

                        memcpy(t, p + 1, n - 2);
                        t[n - 2] = 0;

                        a = bus_gvariant_get_alignment(t);
                        break;
                }

                default:
                        assert_not_reached("Unknown signature type");
                }

                if (a < 0)
                        return a;

                assert(a > 0 && a <= 8);
                if ((size_t) a > alignment)
                        alignment = (size_t) a;

                p += n;
        }

        return alignment;
}
