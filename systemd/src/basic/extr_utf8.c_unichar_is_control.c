
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char32_t ;


 int IN_SET (char,char,char) ;

__attribute__((used)) static bool unichar_is_control(char32_t ch) {







        return (ch < ' ' && !IN_SET(ch, '\t', '\n')) ||
                (0x7F <= ch && ch <= 0x9F);
}
