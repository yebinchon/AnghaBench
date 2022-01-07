
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* allowed_commands; int flags; } ;
typedef TYPE_1__ user ;
typedef size_t uint64_t ;


 scalar_t__ ACLGetCommandBitCoordinates (unsigned long,size_t*,size_t*) ;
 scalar_t__ C_ERR ;
 int USER_FLAG_ALLCOMMANDS ;

void ACLSetUserCommandBit(user *u, unsigned long id, int value) {
    uint64_t word, bit;
    if (value == 0) u->flags &= ~USER_FLAG_ALLCOMMANDS;
    if (ACLGetCommandBitCoordinates(id,&word,&bit) == C_ERR) return;
    if (value)
        u->allowed_commands[word] |= bit;
    else
        u->allowed_commands[word] &= ~bit;
}
