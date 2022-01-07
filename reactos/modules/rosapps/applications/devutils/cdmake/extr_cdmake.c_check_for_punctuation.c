
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int accept_punctuation_marks ;
 int error_exit (char*,char const*) ;
 int isalnum (int) ;
 int toupper (int) ;

__attribute__((used)) static int check_for_punctuation(int c, const char *name)
{
    c = toupper(c & 0xFF);
    if (!accept_punctuation_marks && !isalnum(c) && c != '_')
        error_exit("Punctuation mark in %s", name);
    return c;
}
