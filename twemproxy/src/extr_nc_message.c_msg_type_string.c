
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {int dummy; } ;
typedef size_t msg_type_t ;


 struct string* msg_type_strings ;

struct string *
msg_type_string(msg_type_t type)
{
    return &msg_type_strings[type];
}
