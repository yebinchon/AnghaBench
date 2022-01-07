
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 char const** BIND_TAG_TEXT ;
 char const** FUNC_TAG_TEXT ;

__attribute__((used)) static const char *tag2text(uint8_t tag)
{
    return (tag & 0x80) ? FUNC_TAG_TEXT[tag & 0x7F] : BIND_TAG_TEXT[tag];
}
