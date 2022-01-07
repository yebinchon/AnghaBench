
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 char NUL ;
 scalar_t__ STRLEN (char*) ;
 int mb_ptr2len (char*) ;
 int mch_memmove (char*,char*,int ) ;
 int stub1 (char*) ;
 int * vim_strchr (char*,char) ;

__attribute__((used)) static void
unescape_shellxquote(char_u *p, char_u *escaped)
{
    int l = (int)STRLEN(p);
    int n;

    while (*p != NUL)
    {
 if (*p == '^' && vim_strchr(escaped, p[1]) != ((void*)0))
     mch_memmove(p, p + 1, l--);



 n = 1;

 p += n;
 l -= n;
    }
}
