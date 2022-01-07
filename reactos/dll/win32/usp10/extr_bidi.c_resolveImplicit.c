
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int const AN ;
 int ASSERT (int) ;
 int const BN ;
 int const EN ;
 int const L ;
 int const R ;
 scalar_t__ odd (int) ;

__attribute__((used)) static void resolveImplicit(const WORD * pcls, WORD *plevel, int sos, int eos)
{
    int i;


    for (i = sos; i <= eos; i++)
    {
        if (pcls[i] == BN)
            continue;

        ASSERT(pcls[i] > 0);
        ASSERT(pcls[i] < 5);

        if (odd(plevel[i]) && (pcls[i] == L || pcls[i] == EN || pcls [i] == AN))
            plevel[i]++;
        else if (!odd(plevel[i]) && pcls[i] == R)
            plevel[i]++;
        else if (!odd(plevel[i]) && (pcls[i] == EN || pcls [i] == AN))
            plevel[i]+=2;
    }
}
