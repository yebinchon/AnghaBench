
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WHITESPACE ;
 char* delete_trailing_chars (int ,int ) ;
 int skip_leading_chars (char*,int ) ;

char *strstrip(char *s) {
        if (!s)
                return ((void*)0);



        return delete_trailing_chars(skip_leading_chars(s, WHITESPACE), WHITESPACE);
}
