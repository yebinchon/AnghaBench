
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BOOL ;


 scalar_t__ WM_KEYDOWN ;
 scalar_t__ WM_KEYUP ;

__attribute__((used)) static inline BOOL IseKeyMsg(UINT msg)
{
    return (msg == WM_KEYUP || msg == WM_KEYDOWN);
}
