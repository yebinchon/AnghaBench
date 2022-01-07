
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int EdonRState ;


 int EdonRFinal (int *,int *) ;
 int EdonRInit (int *,size_t) ;
 int EdonRUpdate (int *,int const*,size_t) ;

void
EdonRHash(size_t hashbitlen, const uint8_t *data, size_t databitlen,
    uint8_t *hashval)
{
 EdonRState state;

 EdonRInit(&state, hashbitlen);
 EdonRUpdate(&state, data, databitlen);
 EdonRFinal(&state, hashval);
}
