
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int name_length; int name; } ;
typedef TYPE_1__ Messenger ;


 int memcpy (int *,int ,int ) ;

uint16_t getself_name(const Messenger *m, uint8_t *name)
{
    if (name == ((void*)0)) {
        return 0;
    }

    memcpy(name, m->name, m->name_length);

    return m->name_length;
}
