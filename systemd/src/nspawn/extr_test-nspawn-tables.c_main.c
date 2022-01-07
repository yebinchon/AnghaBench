
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RESOLV_CONF_MODE ;
 int TIMEZONE_MODE ;
 int resolv_conf_mode ;
 int test_table (int ,int ) ;
 int timezone_mode ;

int main(int argc, char **argv) {
        test_table(resolv_conf_mode, RESOLV_CONF_MODE);
        test_table(timezone_mode, TIMEZONE_MODE);

        return 0;
}
