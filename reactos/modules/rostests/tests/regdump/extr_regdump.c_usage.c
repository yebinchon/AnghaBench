
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void usage(const char* appName)
{
    fprintf(stderr, "%s: Dump registry key to console\n", appName);
    fprintf(stderr, "%s HKCR | HKCU | HKLM | HKU | HKCC | HKRR\n", appName);
}
