
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SkipBlanks (char const*,int) ;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static int ParseTime( const char *s, size_t i_strlen)
{

    int result = 0;
    int val;
    const char *end = s + i_strlen;

    s = SkipBlanks(s, i_strlen);

    val = 0;
    while( (s < end) && isdigit((unsigned char)*s) )
    {
        int newval = val*10 + (*s - '0');
        if( newval < val )
        {

            val = 0;
            break;
        }
        val = newval;
        ++s;
    }
    result = val;
    s = SkipBlanks(s, end-s);
    if( *s == ':' )
    {
        ++s;
        s = SkipBlanks(s, end-s);
        result = result * 60;
        val = 0;
        while( (s < end) && isdigit((unsigned char)*s) )
        {
            int newval = val*10 + (*s - '0');
            if( newval < val )
            {

                val = 0;
                break;
            }
            val = newval;
            ++s;
        }
        result += val;
        s = SkipBlanks(s, end-s);
        if( *s == ':' )
        {
            ++s;
            s = SkipBlanks(s, end-s);
            result = result * 60;
            val = 0;
            while( (s < end) && isdigit((unsigned char)*s) )
            {
                int newval = val*10 + (*s - '0');
                if( newval < val )
                {

                    val = 0;
                    break;
                }
                val = newval;
                ++s;
            }
            result += val;

        }
    }
    return result;
}
