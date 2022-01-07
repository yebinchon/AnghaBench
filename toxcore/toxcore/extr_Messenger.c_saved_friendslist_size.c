
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct SAVED_FRIEND {int dummy; } ;
typedef int Messenger ;


 int count_friendlist (int const*) ;

__attribute__((used)) static uint32_t saved_friendslist_size(const Messenger *m)
{
    return count_friendlist(m) * sizeof(struct SAVED_FRIEND);
}
