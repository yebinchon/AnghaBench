
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ char_u ;


 int CSI ;
 scalar_t__ IS_SPECIAL (int) ;
 scalar_t__ KS_MODIFIER ;
 int K_CSI ;
 scalar_t__ K_SECOND (int) ;
 scalar_t__ K_THIRD (int) ;
 int MOD_MASK_CTRL ;
 int TO_SPECIAL (scalar_t__,scalar_t__) ;
 void* TRUE ;
 int add_to_input_buf (scalar_t__*,int) ;
 int extract_modifiers (int,int*) ;
 void* got_int ;
 int simplify_key (int,int*) ;

void
gui_web_handle_key(int code, int modifiers, char_u special1, char_u special2)
{
    char_u buf[64];
    int buf_len = 0;
    int is_special = (special1 != 0);

    if(is_special)
    {
        code = TO_SPECIAL(special1, special2);
        code = simplify_key(code, &modifiers);
    }
    else
    {
        if(code == 'c' && (modifiers & MOD_MASK_CTRL))
            got_int = TRUE;
        if(!IS_SPECIAL(code))
        {
            code = simplify_key(code, &modifiers);
            code = extract_modifiers(code, &modifiers);
            if(code == CSI)
                code = K_CSI;
            if(IS_SPECIAL(code))
                is_special = TRUE;
        }
    }

    if(modifiers)
    {
        buf[buf_len++] = CSI;
        buf[buf_len++] = KS_MODIFIER;
        buf[buf_len++] = modifiers;
    }

    if(is_special && IS_SPECIAL(code))
    {
        buf[buf_len++] = CSI;
        buf[buf_len++] = K_SECOND(code);
        buf[buf_len++] = K_THIRD(code);
    }
    else
    {

        buf[buf_len++] = code;
    }

    if(buf_len)
        add_to_input_buf(buf, buf_len);
}
