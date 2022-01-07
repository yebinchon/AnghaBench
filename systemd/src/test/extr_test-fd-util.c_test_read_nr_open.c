
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_info (char*,int ) ;
 int read_nr_open () ;

__attribute__((used)) static void test_read_nr_open(void) {
        log_info("nr-open: %i", read_nr_open());
}
