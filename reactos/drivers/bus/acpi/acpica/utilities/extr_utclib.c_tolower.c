
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c ;


 scalar_t__ isupper (int) ;

int
tolower (
    int c)
{

    return (isupper(c) ? ((c)+0x20) : (c));
}
