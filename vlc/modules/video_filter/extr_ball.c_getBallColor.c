
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int BLUE ;
 int GREEN ;
 int RED ;
 int WHITE ;
 int msg_Err (int *,char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int getBallColor( vlc_object_t *p_this, char const *psz_newval )
{
    int ret;
    if( !strcmp( psz_newval, "red" ) )
        ret = RED;
    else if( !strcmp( psz_newval, "blue" ) )
        ret = BLUE;
    else if( !strcmp( psz_newval, "green" ) )
        ret = GREEN;
    else if( !strcmp( psz_newval, "white" ) )
        ret = WHITE;
    else
    {
        msg_Err( p_this, "no valid ball color provided (%s)", psz_newval );
        ret = RED;
    }
    return ret;
}
