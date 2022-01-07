
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int jsbytecode ;
typedef int BOOL ;


 int FALSE ;
 int JUMP_OFFSET_HI (int) ;
 int JUMP_OFFSET_LO (int) ;
 size_t OFFSET_MAX ;
 int TRUE ;
 int assert (int) ;

__attribute__((used)) static BOOL
SetForwardJumpOffset(jsbytecode *jump, jsbytecode *target)
{
    ptrdiff_t offset = target - jump;


    assert(offset >= 2);
    if ((size_t)offset > OFFSET_MAX)
        return FALSE;

    jump[0] = JUMP_OFFSET_HI(offset);
    jump[1] = JUMP_OFFSET_LO(offset);
    return TRUE;
}
