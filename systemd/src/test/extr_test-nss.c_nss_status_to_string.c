
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nss_status { ____Placeholder_nss_status } nss_status ;







 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static const char* nss_status_to_string(enum nss_status status, char *buf, size_t buf_len) {
        switch (status) {
        case 129:
                return "NSS_STATUS_TRYAGAIN";
        case 128:
                return "NSS_STATUS_UNAVAIL";
        case 132:
                return "NSS_STATUS_NOTFOUND";
        case 130:
                return "NSS_STATUS_SUCCESS";
        case 131:
                return "NSS_STATUS_RETURN";
        default:
                snprintf(buf, buf_len, "%i", status);
                return buf;
        }
}
