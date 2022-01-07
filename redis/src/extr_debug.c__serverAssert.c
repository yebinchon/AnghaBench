
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* assert_failed; char const* assert_file; int assert_line; } ;


 int LL_WARNING ;
 int bugReportStart () ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;

void _serverAssert(const char *estr, const char *file, int line) {
    bugReportStart();
    serverLog(LL_WARNING,"=== ASSERTION FAILED ===");
    serverLog(LL_WARNING,"==> %s:%d '%s' is not true",file,line,estr);






    *((char*)-1) = 'x';
}
