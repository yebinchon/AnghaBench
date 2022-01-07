
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_notice (char*) ;

int setup_gnutls_logger(char **categories) {
        if (categories)
                log_notice("Ignoring specified gnutls logging categories — gnutls not available.");
        return 0;
}
