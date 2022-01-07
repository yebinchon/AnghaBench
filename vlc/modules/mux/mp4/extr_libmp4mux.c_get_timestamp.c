
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int time (int *) ;

__attribute__((used)) static int64_t get_timestamp(void)
{
    int64_t i_timestamp = time(((void*)0));

    i_timestamp += 2082844800;


    return i_timestamp;
}
