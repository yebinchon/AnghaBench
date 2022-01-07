
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pos ;
 char* sequence ;

__attribute__((used)) static void Clear(void)
{
    pos = 0;
    sequence[0] = '\0';
}
