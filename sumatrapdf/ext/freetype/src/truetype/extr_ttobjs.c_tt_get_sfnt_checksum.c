
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int stream; } ;
struct TYPE_8__ {TYPE_2__* dir_tables; TYPE_1__ root; scalar_t__ (* goto_table ) (TYPE_3__*,int ,int ,int *) ;} ;
struct TYPE_7__ {int Length; int Tag; scalar_t__ CheckSum; } ;
typedef TYPE_3__* TT_Face ;
typedef size_t FT_UShort ;
typedef scalar_t__ FT_ULong ;


 scalar_t__ stub1 (TYPE_3__*,int ,int ,int *) ;
 int tt_synth_sfnt_checksum (int ,int ) ;

__attribute__((used)) static FT_ULong
  tt_get_sfnt_checksum( TT_Face face,
                        FT_UShort i )
  {





    if ( !face->goto_table )
      return 0;

    if ( face->goto_table( face,
                           face->dir_tables[i].Tag,
                           face->root.stream,
                           ((void*)0) ) )
      return 0;

    return (FT_ULong)tt_synth_sfnt_checksum( face->root.stream,
                                             face->dir_tables[i].Length );
  }
