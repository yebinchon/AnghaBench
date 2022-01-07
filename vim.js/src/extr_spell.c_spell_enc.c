
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 scalar_t__ STRCMP (int *,char*) ;
 int STRLEN (int *) ;
 int * p_enc ;

__attribute__((used)) static char_u *
spell_enc()
{





    return (char_u *)"latin1";
}
