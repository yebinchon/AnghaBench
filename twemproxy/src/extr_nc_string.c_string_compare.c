
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {scalar_t__ len; int data; } ;


 int nc_strncmp (int ,int ,scalar_t__) ;

int
string_compare(const struct string *s1, const struct string *s2)
{
    if (s1->len != s2->len) {
        return s1->len > s2->len ? 1 : -1;
    }

    return nc_strncmp(s1->data, s2->data, s1->len);
}
