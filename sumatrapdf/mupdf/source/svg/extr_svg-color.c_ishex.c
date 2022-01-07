
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ishex(int chr)
{
 if (chr >= '0' && chr <= '9') return 1;
 if (chr >= 'A' && chr <= 'F') return 1;
 if (chr >= 'a' && chr <= 'f') return 1;
 return 0;
}
