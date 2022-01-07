
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ width_only; int flex_state; } ;
struct TYPE_7__ {TYPE_3__* decoder; scalar_t__ isT1; } ;
struct TYPE_6__ {scalar_t__ minDS; scalar_t__ maxDS; int used; void* max; void* min; } ;
typedef scalar_t__ FT_Bool ;
typedef int CF2_UInt ;
typedef TYPE_1__ CF2_StemHintRec ;
typedef int CF2_Stack ;
typedef TYPE_2__* CF2_Font ;
typedef void* CF2_Fixed ;
typedef int CF2_ArrStack ;


 void* ADD_INT32 (void*,void*) ;
 int FALSE ;
 scalar_t__ FT_BOOL (int) ;
 int FT_ERROR (char*) ;
 scalar_t__ TRUE ;
 int cf2_arrstack_push (int ,TYPE_1__*) ;
 void* cf2_getNominalWidthX (TYPE_3__*) ;
 int cf2_stack_clear (int ) ;
 int cf2_stack_count (int ) ;
 void* cf2_stack_getReal (int ,int) ;

__attribute__((used)) static void
  cf2_doStems( const CF2_Font font,
               CF2_Stack opStack,
               CF2_ArrStack stemHintArray,
               CF2_Fixed* width,
               FT_Bool* haveWidth,
               CF2_Fixed hintOffset )
  {
    CF2_UInt i;
    CF2_UInt count = cf2_stack_count( opStack );
    FT_Bool hasWidthArg = FT_BOOL( count & 1 );


    CF2_Fixed position = hintOffset;

    if ( font->isT1 && !font->decoder->flex_state && !*haveWidth )
      FT_ERROR(( "cf2_doStems (Type 1 mode):"
                 " No width. Use hsbw/sbw as first op\n" ));

    if ( !font->isT1 && hasWidthArg && !*haveWidth )
      *width = ADD_INT32( cf2_stack_getReal( opStack, 0 ),
                          cf2_getNominalWidthX( font->decoder ) );

    if ( font->decoder->width_only )
      goto exit;

    for ( i = hasWidthArg ? 1 : 0; i < count; i += 2 )
    {

      CF2_StemHintRec stemhint;


      stemhint.min =
      position = ADD_INT32( position,
                                cf2_stack_getReal( opStack, i ) );
      stemhint.max =
      position = ADD_INT32( position,
                                cf2_stack_getReal( opStack, i + 1 ) );

      stemhint.used = FALSE;
      stemhint.maxDS =
      stemhint.minDS = 0;

      cf2_arrstack_push( stemHintArray, &stemhint );
    }

    cf2_stack_clear( opStack );

  exit:

    *haveWidth = TRUE;
  }
