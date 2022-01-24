#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ char_u ;

/* Variables and functions */
 int CSI ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ KS_MODIFIER ; 
 int K_CSI ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int MOD_MASK_CTRL ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 int FUNC5 (int,int*) ; 
 void* got_int ; 
 int FUNC6 (int,int*) ; 

void
FUNC7(int code, int modifiers, char_u special1, char_u special2)
{
    char_u buf[64];
    int buf_len = 0;
    int is_special = (special1 != 0);

    if(is_special) 
    {
        code = FUNC3(special1, special2);
        code = FUNC6(code, &modifiers);
    }
    else 
    {
        if(code == 'c' && (modifiers & MOD_MASK_CTRL))
            got_int = TRUE;
        if(!FUNC0(code))
        {
            code = FUNC6(code, &modifiers);
            code = FUNC5(code, &modifiers);
            if(code == CSI)
                code = K_CSI;
            if(FUNC0(code))
                is_special = TRUE;
        }
    }

    if(modifiers) 
    {
        buf[buf_len++] = CSI;
        buf[buf_len++] = KS_MODIFIER;
        buf[buf_len++] = modifiers;
    }

    if(is_special && FUNC0(code))
    {
        buf[buf_len++] = CSI;
        buf[buf_len++] = FUNC1(code);
        buf[buf_len++] = FUNC2(code);
    }
    else
    {
        // TODO: support Unicode
        buf[buf_len++] = code;
    }

    if(buf_len)
        FUNC4(buf, buf_len);
}