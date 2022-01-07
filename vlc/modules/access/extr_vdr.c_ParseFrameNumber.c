
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int __MAX (int,int) ;
 unsigned int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int strtoll (char const*,int *,int) ;

__attribute__((used)) static int64_t ParseFrameNumber( const char *psz_line, float fps )
{
    unsigned h, m, s, f, n;


    n = sscanf( psz_line, "%u:%u:%u.%u", &h, &m, &s, &f );
    if( n >= 3 )
    {
        if( n < 4 )
            f = 1;
        int64_t i_seconds = (int64_t)h * 3600 + (int64_t)m * 60 + s;
        return (int64_t)( i_seconds * (double)fps ) + __MAX(1, f) - 1;
    }


    int64_t i_frame = strtoll( psz_line, ((void*)0), 10 );
    return __MAX(1, i_frame) - 1;
}
