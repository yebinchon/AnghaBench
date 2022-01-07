
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ld2string_mode ;





 scalar_t__ isinf (long double) ;
 int memcpy (char*,char*,int) ;
 size_t snprintf (char*,size_t,char*,long double) ;
 int * strchr (char*,char) ;

int ld2string(char *buf, size_t len, long double value, ld2string_mode mode) {
    size_t l = 0;

    if (isinf(value)) {


        if (len < 5) return 0;
        if (value > 0) {
            memcpy(buf,"inf",3);
            l = 3;
        } else {
            memcpy(buf,"-inf",4);
            l = 4;
        }
    } else {
        switch (mode) {
        case 130:
            l = snprintf(buf,len,"%.17Lg",value);
            if (l+1 > len) return 0;
            break;
        case 129:
            l = snprintf(buf,len,"%La",value);
            if (l+1 > len) return 0;
            break;
        case 128:





            l = snprintf(buf,len,"%.17Lf",value);
            if (l+1 > len) return 0;

            if (strchr(buf,'.') != ((void*)0)) {
                char *p = buf+l-1;
                while(*p == '0') {
                    p--;
                    l--;
                }
                if (*p == '.') l--;
            }
            break;
        default: return 0;
        }
    }
    buf[l] = '\0';
    return l;
}
