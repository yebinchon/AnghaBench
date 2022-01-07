
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte_t ;
typedef scalar_t__ ULONG ;
typedef int* PULONG ;
typedef char CHAR ;
typedef int BOOLEAN ;


 int KBD_STAT_OBF ;
 int kbd_read_input () ;
 int kbd_read_status () ;
 char** keyb_layout ;

CHAR
KdbpTryGetCharKeyboard(PULONG ScanCode, ULONG Retry)
{
    static byte_t last_key = 0;
    static byte_t shift = 0;
    char c;
    BOOLEAN KeepRetrying = (Retry == 0);

    while (KeepRetrying || Retry-- > 0)
    {
        while (kbd_read_status() & KBD_STAT_OBF)
        {
            byte_t scancode;

            scancode = kbd_read_input();


            if (((scancode & 0x7F) == 42) || ((scancode & 0x7F) == 54))
            {
                shift = !(scancode & 0x80);
                continue;
            }


            if (scancode & 0x80)
            {
                last_key = 0;
            }
            else if (last_key != scancode)
            {

                last_key = scancode;
                c = keyb_layout[shift][scancode];
                *ScanCode = scancode;

                if (c > 0)
                    return c;
            }
        }
    }

    return -1;
}
