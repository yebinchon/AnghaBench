
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUL ;
 int no_mapping ;
 int vpeekc () ;

int
char_avail()
{
    int retval;

    ++no_mapping;
    retval = vpeekc();
    --no_mapping;
    return (retval != NUL);
}
