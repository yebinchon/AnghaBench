
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Messenger ;


 int getfriend_id (int const*,int const*) ;

__attribute__((used)) static int friend_already_added(const uint8_t *real_pk, void *data)
{
    const Messenger *m = data;

    if (getfriend_id(m, real_pk) == -1)
        return 0;

    return -1;
}
