
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {char AsciiChar; int UnicodeChar; } ;
struct TYPE_7__ {scalar_t__ wVirtualKeyCode; TYPE_1__ uChar; int bKeyDown; } ;
struct TYPE_8__ {TYPE_2__ KeyEvent; } ;
struct TYPE_9__ {scalar_t__ EventType; TYPE_3__ Event; } ;
typedef TYPE_4__ INPUT_RECORD ;
typedef int HANDLE ;
typedef int DWORD ;


 char* FromWide (int*) ;
 scalar_t__ KEY_EVENT ;
 int MAX_LINE_LENGTH ;
 scalar_t__ ReadConsoleInput (int *,TYPE_4__*,int,int *) ;
 scalar_t__ VK_CAPITAL ;
 scalar_t__ VK_CONTROL ;
 scalar_t__ VK_MENU ;
 scalar_t__ VK_SHIFT ;
 int assert (int) ;
 unsigned int clz (unsigned char) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 int putc (char,int ) ;
 int stdout ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int utf8_fprintf (int ,char*,char*) ;

__attribute__((used)) static bool ReadWin32( HANDLE *hConsoleIn, unsigned char *p_buffer, int *pi_size )
{
    INPUT_RECORD input_record;
    DWORD i_dw;




    while( *pi_size < MAX_LINE_LENGTH - 4 &&
           ReadConsoleInput( hConsoleIn, &input_record, 1, &i_dw ) )
    {
        if( input_record.EventType != KEY_EVENT ||
            !input_record.Event.KeyEvent.bKeyDown ||
            input_record.Event.KeyEvent.wVirtualKeyCode == VK_SHIFT ||
            input_record.Event.KeyEvent.wVirtualKeyCode == VK_CONTROL||
            input_record.Event.KeyEvent.wVirtualKeyCode == VK_MENU ||
            input_record.Event.KeyEvent.wVirtualKeyCode == VK_CAPITAL )
        {

            continue;
        }
        if( input_record.Event.KeyEvent.uChar.AsciiChar == '\n' ||
            input_record.Event.KeyEvent.uChar.AsciiChar == '\r' )
        {
            putc( '\n', stdout );
            p_buffer[*pi_size] = '\n';
            (*pi_size)++;
            break;
        }
        switch( input_record.Event.KeyEvent.uChar.AsciiChar )
        {
        case '\b':
            if ( *pi_size == 0 )
                break;
            if ( *pi_size > 1 && (p_buffer[*pi_size - 1] & 0xC0) == 0x80 )
            {



                (*pi_size) -= 2;
                unsigned int nbBytes = 1;
                while( *pi_size > 0 && (p_buffer[*pi_size] & 0xC0) == 0x80 )
                {
                    (*pi_size)--;
                    nbBytes++;
                }
                assert( clz( (unsigned char)~(p_buffer[*pi_size]) ) == nbBytes + 1 );

            }
            else
                (*pi_size)--;
            p_buffer[*pi_size] = 0;

            fputs( "\b \b", stdout );
            break;
        default:
        {
            WCHAR psz_winput[] = { input_record.Event.KeyEvent.uChar.UnicodeChar, L'\0' };
            char* psz_input = FromWide( psz_winput );
            int input_size = strlen(psz_input);
            if ( *pi_size + input_size > MAX_LINE_LENGTH )
            {
                p_buffer[ *pi_size ] = 0;
                return 0;
            }
            strcpy( (char*)&p_buffer[*pi_size], psz_input );
            utf8_fprintf( stdout, "%s", psz_input );
            free(psz_input);
            *pi_size += input_size;
        }
        }
    }

    p_buffer[ *pi_size ] = 0;
    return 1;
}
