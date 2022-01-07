
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EVENT_CURSORMOVED ;
 int ** first_autopat ;

int
has_cursormoved()
{
    return (first_autopat[(int)EVENT_CURSORMOVED] != ((void*)0));
}
