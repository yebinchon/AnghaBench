
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
struct TYPE_3__ {scalar_t__ sparse; } ;
typedef TYPE_1__ Codebook ;


 int FALSE ;
 scalar_t__ NO_CODE ;
 scalar_t__ STB_VORBIS_FAST_HUFFMAN_LENGTH ;
 int TRUE ;
 int assert (int) ;

__attribute__((used)) static int include_in_sort(Codebook *c, uint8 len)
{
   if (c->sparse) { assert(len != NO_CODE); return TRUE; }
   if (len == NO_CODE) return FALSE;
   if (len > STB_VORBIS_FAST_HUFFMAN_LENGTH) return TRUE;
   return FALSE;
}
