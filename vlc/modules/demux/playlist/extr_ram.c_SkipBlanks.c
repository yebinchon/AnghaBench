
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *SkipBlanks( const char *s, size_t i_strlen )
{
    while( i_strlen > 0 ) {
        switch( *s )
        {
            case ' ':
            case '\t':
            case '\r':
            case '\n':
                --i_strlen;
                ++s;
                break;
            default:
                i_strlen = 0;
        }
    }
    return s;
}
