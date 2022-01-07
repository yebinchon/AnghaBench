
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const uint64_t ;
typedef int const uint32_t ;
struct TYPE_9__ {scalar_t__ LastPart; int DoublePipe; } ;
struct TYPE_8__ {scalar_t__ LastPart; int DoublePipe; } ;
struct TYPE_7__ {int hashbitlen; int unprocessed_bits; size_t bits_processed; } ;
typedef TYPE_1__ EdonRState ;


 int ASSERT (int) ;
 int EDONR_VALID_HASHBITLEN (int) ;
 int EdonR256_BLOCK_SIZE ;
 int EdonR512_BLOCK_SIZE ;
 size_t Q256 (size_t,int const*,int ) ;
 size_t Q512 (size_t,int const*,int ) ;
 int bcopy (int const*,scalar_t__,int) ;
 TYPE_4__* hashState256 (TYPE_1__*) ;
 TYPE_2__* hashState512 (TYPE_1__*) ;

void
EdonRUpdate(EdonRState *state, const uint8_t *data, size_t databitlen)
{
 uint32_t *data32;
 uint64_t *data64;

 size_t bits_processed;

 ASSERT(EDONR_VALID_HASHBITLEN(state->hashbitlen));
 switch (state->hashbitlen) {
 case 224:
 case 256:
  if (state->unprocessed_bits > 0) {

   int LastBytes = (int)databitlen >> 3;

   ASSERT(state->unprocessed_bits + databitlen <=
       EdonR256_BLOCK_SIZE * 8);

   bcopy(data, hashState256(state)->LastPart
       + (state->unprocessed_bits >> 3), LastBytes);
   state->unprocessed_bits += (int)databitlen;
   databitlen = state->unprocessed_bits;

   data32 = (uint32_t *)hashState256(state)->LastPart;
  } else

   data32 = (uint32_t *)data;

  bits_processed = Q256(databitlen, data32,
      hashState256(state)->DoublePipe);
  state->bits_processed += bits_processed;
  databitlen -= bits_processed;
  state->unprocessed_bits = (int)databitlen;
  if (databitlen > 0) {

   int LastBytes =
       ((~(((-(int)databitlen) >> 3) & 0x01ff)) +
       1) & 0x01ff;

   data32 += bits_processed >> 5;
   bcopy(data32, hashState256(state)->LastPart, LastBytes);
  }
  break;

 case 384:
 case 512:
  if (state->unprocessed_bits > 0) {

   int LastBytes = (int)databitlen >> 3;

   ASSERT(state->unprocessed_bits + databitlen <=
       EdonR512_BLOCK_SIZE * 8);

   bcopy(data, hashState512(state)->LastPart
       + (state->unprocessed_bits >> 3), LastBytes);
   state->unprocessed_bits += (int)databitlen;
   databitlen = state->unprocessed_bits;

   data64 = (uint64_t *)hashState512(state)->LastPart;
  } else

   data64 = (uint64_t *)data;

  bits_processed = Q512(databitlen, data64,
      hashState512(state)->DoublePipe);
  state->bits_processed += bits_processed;
  databitlen -= bits_processed;
  state->unprocessed_bits = (int)databitlen;
  if (databitlen > 0) {

   int LastBytes =
       ((~(((-(int)databitlen) >> 3) & 0x03ff)) +
       1) & 0x03ff;

   data64 += bits_processed >> 6;
   bcopy(data64, hashState512(state)->LastPart, LastBytes);
  }
  break;
 }
}
