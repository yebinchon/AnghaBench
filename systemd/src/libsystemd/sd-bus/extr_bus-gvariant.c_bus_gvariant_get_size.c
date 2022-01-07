
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN_TO (int,int) ;
 int EINVAL ;
 int assert_not_reached (char*) ;
 int bus_gvariant_get_alignment (char const*) ;
 int memcpy (char*,char const*,size_t) ;
 int signature_element_length (char const*,size_t*) ;

int bus_gvariant_get_size(const char *signature) {
        const char *p;
        int sum = 0, r;



        p = signature;
        while (*p != 0) {
                size_t n;

                r = signature_element_length(p, &n);
                if (r < 0)
                        return r;
                else {
                        char t[n+1];

                        memcpy(t, p, n);
                        t[n] = 0;

                        r = bus_gvariant_get_alignment(t);
                        if (r < 0)
                                return r;

                        sum = ALIGN_TO(sum, r);
                }

                switch (*p) {

                case 143:
                case 142:
                        sum += 1;
                        break;

                case 139:
                case 132:
                        sum += 2;
                        break;

                case 138:
                case 131:
                case 129:
                        sum += 4;
                        break;

                case 137:
                case 130:
                case 140:
                        sum += 8;
                        break;

                case 133:
                case 141: {
                        if (n == 2) {

                                r = 1;
                        } else {
                                char t[n-1];

                                memcpy(t, p + 1, n - 2);
                                t[n - 2] = 0;

                                r = bus_gvariant_get_size(t);
                                if (r < 0)
                                        return r;
                        }

                        sum += r;
                        break;
                }

                case 134:
                case 136:
                case 135:
                case 144:
                case 128:
                        return -EINVAL;

                default:
                        assert_not_reached("Unknown signature type");
                }

                p += n;
        }

        r = bus_gvariant_get_alignment(signature);
        if (r < 0)
                return r;

        return ALIGN_TO(sum, r);
}
