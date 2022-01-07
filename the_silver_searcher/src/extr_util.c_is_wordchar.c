
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* wordchar_table ;

int is_wordchar(char ch) {
    return wordchar_table[(unsigned char)ch];
}
