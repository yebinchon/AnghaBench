
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BOOL ;


 scalar_t__ CP_ACP ;
 int FALSE ;
 int IsValidCodePage (scalar_t__) ;
 int TRUE ;
 int WARN (char*,scalar_t__) ;

__attribute__((used)) static BOOL validate_codepage( UINT codepage )
{
    if (codepage != CP_ACP && !IsValidCodePage( codepage ))
    {
        WARN("invalid codepage %u\n", codepage);
        return FALSE;
    }
    return TRUE;
}
