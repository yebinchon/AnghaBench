
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int ACLGetUserCommandBit (int *,scalar_t__) ;
 scalar_t__ USER_COMMAND_BITS_COUNT ;

int ACLUserCanExecuteFutureCommands(user *u) {
    return ACLGetUserCommandBit(u,USER_COMMAND_BITS_COUNT-1);
}
