
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int to; int from; int member_0; } ;
typedef TYPE_1__ MirrorPair ;


 int BIDI_MIRROR_LEN ;
 scalar_t__ bsearch (TYPE_1__*,int ,int ,int,int ) ;
 int compare_mp ;
 int mirror_pairs ;

uint32_t ucdn_mirror(uint32_t code)
{
 MirrorPair mp = {0};
 MirrorPair *res;

 mp.from = code;
 res = (MirrorPair *) bsearch(&mp, mirror_pairs, BIDI_MIRROR_LEN,
  sizeof(MirrorPair), compare_mp);

 if (res == ((void*)0))
  return code;
 else
  return res->to;
}
