
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strstr (char const*,char*) ;

__attribute__((used)) static int cert_file_filter(const char *fn)
{
 return !!strstr(fn, ".pfx");
}
