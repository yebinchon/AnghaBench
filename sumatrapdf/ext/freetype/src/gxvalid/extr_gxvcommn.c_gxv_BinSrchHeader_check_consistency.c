
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unitSize; int nUnits; int searchRange; int entrySelector; scalar_t__ rangeShift; } ;
typedef int GXV_Validator ;
typedef TYPE_1__ GXV_BinSrchHeader ;
typedef int FT_UShort ;


 int FT_INVALID_DATA ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_BinSrchHeader_check_consistency( GXV_BinSrchHeader* binSrchHeader,
                                       GXV_Validator gxvalid )
  {
    FT_UShort searchRange;
    FT_UShort entrySelector;
    FT_UShort rangeShift;


    if ( binSrchHeader->unitSize == 0 )
      FT_INVALID_DATA;

    if ( binSrchHeader->nUnits == 0 )
    {
      if ( binSrchHeader->searchRange == 0 &&
           binSrchHeader->entrySelector == 0 &&
           binSrchHeader->rangeShift == 0 )
        return;
      else
        FT_INVALID_DATA;
    }

    for ( searchRange = 1, entrySelector = 1;
          ( searchRange * 2 ) <= binSrchHeader->nUnits &&
            searchRange < 0x8000U;
          searchRange *= 2, entrySelector++ )
      ;

    entrySelector--;
    searchRange = (FT_UShort)( searchRange * binSrchHeader->unitSize );
    rangeShift = (FT_UShort)( binSrchHeader->nUnits * binSrchHeader->unitSize
                               - searchRange );

    if ( searchRange != binSrchHeader->searchRange ||
         entrySelector != binSrchHeader->entrySelector ||
         rangeShift != binSrchHeader->rangeShift )
    {
      GXV_TRACE(( "Inconsistency found in BinSrchHeader\n" ));
      GXV_TRACE(( "originally: unitSize=%d, nUnits=%d, "
                  "searchRange=%d, entrySelector=%d, "
                  "rangeShift=%d\n",
                  binSrchHeader->unitSize, binSrchHeader->nUnits,
                  binSrchHeader->searchRange, binSrchHeader->entrySelector,
                  binSrchHeader->rangeShift ));
      GXV_TRACE(( "calculated: unitSize=%d, nUnits=%d, "
                  "searchRange=%d, entrySelector=%d, "
                  "rangeShift=%d\n",
                  binSrchHeader->unitSize, binSrchHeader->nUnits,
                  searchRange, entrySelector, rangeShift ));

      GXV_SET_ERR_IF_PARANOID( FT_INVALID_DATA );
    }
  }
