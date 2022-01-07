
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef int timespan ;
struct mallinfo {scalar_t__ uordblks; } ;


 int CLOCK_MONOTONIC ;
 int FORMAT_TIMESPAN_MAX ;
 int SELABEL_CTX_FILE ;
 int errno ;
 int format_timespan (char*,int,scalar_t__,int ) ;
 scalar_t__ label_hnd ;
 int log_debug (char*,int ,int) ;
 int log_enforcing_errno (int,char*) ;
 int mac_selinux_use () ;
 struct mallinfo mallinfo () ;
 scalar_t__ now (int ) ;
 int security_getenforce () ;
 scalar_t__ selabel_open (int ,int *,int ) ;

int mac_selinux_init(void) {
        int r = 0;
        return r;
}
