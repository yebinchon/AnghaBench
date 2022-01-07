
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _serverAssert (char const*,char const*,int) ;

void RM__Assert(const char *estr, const char *file, int line) {
    _serverAssert(estr, file, line);
}
