
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (int ) ;
 int DISPLAYLEVEL (int,char*,...) ;
 scalar_t__ PLATFORM_POSIX_VERSION ;
 int WELCOME_MESSAGE ;
 long ZSTD_LEGACY_SUPPORT ;
 scalar_t__ _POSIX_C_SOURCE ;
 scalar_t__ _POSIX_VERSION ;

__attribute__((used)) static void printVersion(void)
{
    DISPLAY(WELCOME_MESSAGE);

    DISPLAYLEVEL(3, "*** supports: zstd");
    DISPLAYLEVEL(3, "\n");
}
