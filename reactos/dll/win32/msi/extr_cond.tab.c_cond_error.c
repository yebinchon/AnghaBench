
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int COND_input ;


 int TRACE (char*,char const*) ;

__attribute__((used)) static int cond_error( COND_input *info, const char *str )
{
    TRACE("%s\n", str );
    return 0;
}
