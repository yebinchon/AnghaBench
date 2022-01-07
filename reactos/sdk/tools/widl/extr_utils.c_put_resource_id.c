
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 int put_word (int) ;
 int toupper (unsigned char) ;

__attribute__((used)) static inline void put_resource_id( const char *str )
{
    if (str[0] != '#')
    {
        while (*str)
        {
            unsigned char ch = *str++;
            put_word( toupper(ch) );
        }
        put_word( 0 );
    }
    else
    {
        put_word( 0xffff );
        put_word( atoi( str + 1 ));
    }
}
