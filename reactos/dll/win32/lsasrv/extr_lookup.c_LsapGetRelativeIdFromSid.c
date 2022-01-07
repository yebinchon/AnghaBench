
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int SubAuthorityCount; int * SubAuthority; } ;
typedef TYPE_1__* PSID ;
typedef TYPE_1__* PISID ;



ULONG
LsapGetRelativeIdFromSid(PSID Sid_)
{
    PISID Sid = Sid_;

    if (Sid->SubAuthorityCount != 0)
        return Sid->SubAuthority[Sid->SubAuthorityCount - 1];

    return 0;
}
