
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {int * data; scalar_t__ len; } ;



void
string_init(struct string *str)
{
    str->len = 0;
    str->data = ((void*)0);
}
