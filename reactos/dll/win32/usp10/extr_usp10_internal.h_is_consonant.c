
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int lex_Consonant ;
 int lex_Ra ;

__attribute__((used)) static inline BOOL is_consonant( int type )
{
    return (type == lex_Ra || type == lex_Consonant);
}
