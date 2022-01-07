
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;




__attribute__((used)) static inline BOOL IsDWmMsg(UINT msg)
{
    switch(msg)
    {
    case 129:
    case 130:
    case 128:
    case 0x031f:
        return TRUE;
    }
    return FALSE;
}
