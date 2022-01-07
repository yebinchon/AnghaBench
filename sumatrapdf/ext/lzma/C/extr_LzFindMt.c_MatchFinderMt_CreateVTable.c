
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {void* MixMatchesFunc; TYPE_1__* MatchFinder; int GetHeadsFunc; } ;
struct TYPE_7__ {void* Skip; void* GetMatches; scalar_t__ GetPointerToCurrentPos; scalar_t__ GetNumAvailableBytes; scalar_t__ GetIndexByte; scalar_t__ Init; } ;
struct TYPE_6__ {int numHashBytes; int bigHash; } ;
typedef void* Mf_Skip_Func ;
typedef void* Mf_Mix_Matches ;
typedef scalar_t__ Mf_Init_Func ;
typedef scalar_t__ Mf_GetPointerToCurrentPos_Func ;
typedef scalar_t__ Mf_GetNumAvailableBytes_Func ;
typedef void* Mf_GetMatches_Func ;
typedef scalar_t__ Mf_GetIndexByte_Func ;
typedef TYPE_2__ IMatchFinder ;
typedef TYPE_3__ CMatchFinderMt ;


 int GetHeads2 ;
 int GetHeads3 ;
 int GetHeads4 ;
 int GetHeads4b ;
 int MatchFinderMt0_Skip ;
 scalar_t__ MatchFinderMt2_GetMatches ;
 int MatchFinderMt2_Skip ;
 int MatchFinderMt3_Skip ;
 scalar_t__ MatchFinderMt_GetIndexByte ;
 scalar_t__ MatchFinderMt_GetMatches ;
 scalar_t__ MatchFinderMt_GetNumAvailableBytes ;
 scalar_t__ MatchFinderMt_GetPointerToCurrentPos ;
 scalar_t__ MatchFinderMt_Init ;
 int MixMatches2 ;
 int MixMatches3 ;

void MatchFinderMt_CreateVTable(CMatchFinderMt *p, IMatchFinder *vTable)
{
  vTable->Init = (Mf_Init_Func)MatchFinderMt_Init;
  vTable->GetIndexByte = (Mf_GetIndexByte_Func)MatchFinderMt_GetIndexByte;
  vTable->GetNumAvailableBytes = (Mf_GetNumAvailableBytes_Func)MatchFinderMt_GetNumAvailableBytes;
  vTable->GetPointerToCurrentPos = (Mf_GetPointerToCurrentPos_Func)MatchFinderMt_GetPointerToCurrentPos;
  vTable->GetMatches = (Mf_GetMatches_Func)MatchFinderMt_GetMatches;
  switch(p->MatchFinder->numHashBytes)
  {
    case 2:
      p->GetHeadsFunc = GetHeads2;
      p->MixMatchesFunc = (Mf_Mix_Matches)0;
      vTable->Skip = (Mf_Skip_Func)MatchFinderMt0_Skip;
      vTable->GetMatches = (Mf_GetMatches_Func)MatchFinderMt2_GetMatches;
      break;
    case 3:
      p->GetHeadsFunc = GetHeads3;
      p->MixMatchesFunc = (Mf_Mix_Matches)MixMatches2;
      vTable->Skip = (Mf_Skip_Func)MatchFinderMt2_Skip;
      break;
    default:

      p->GetHeadsFunc = p->MatchFinder->bigHash ? GetHeads4b : GetHeads4;

      p->MixMatchesFunc = (Mf_Mix_Matches)MixMatches3;
      vTable->Skip = (Mf_Skip_Func)MatchFinderMt3_Skip;
      break;







  }
}
