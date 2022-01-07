
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int GetVersion () ;

__attribute__((used)) static inline BOOL SHELL_OsIsUnicode(void)
{
    return !(GetVersion() & 0x80000000);
}
