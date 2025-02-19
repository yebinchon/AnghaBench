
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_messages_s {char const* psz_error; int const i_error; } ;



__attribute__((used)) static const char * GetErrorMessage( const int i_error,
                               const struct error_messages_s const *p_errors_messages )
{
    int i = 0;
    while( p_errors_messages[i].psz_error )
    {
        if ( p_errors_messages[i].i_error == i_error )
            return p_errors_messages[i].psz_error;
        i++;
    }
    return "unknown error";
}
