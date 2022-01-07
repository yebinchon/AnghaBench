
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int entry_validate_func; int entry_glyphoffset_fmt; int subtable_setup_func; int optdata_load_func; int * optdata; } ;
struct TYPE_6__ {TYPE_1__ statetable; } ;
typedef int GXV_kern_fmt1_StateOptRec ;
typedef TYPE_2__* GXV_Validator ;
typedef int FT_Bytes ;


 int GXV_EXIT ;
 int GXV_GLYPHOFFSET_NONE ;
 int GXV_NAME_ENTER (char*) ;
 int gxv_StateTable_validate (int ,int ,TYPE_2__*) ;
 int gxv_kern_subtable_fmt1_entry_validate ;
 int gxv_kern_subtable_fmt1_subtable_setup ;
 int gxv_kern_subtable_fmt1_valueTable_load ;

__attribute__((used)) static void
  gxv_kern_subtable_fmt1_validate( FT_Bytes table,
                                   FT_Bytes limit,
                                   GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    GXV_kern_fmt1_StateOptRec vt_rec;


    GXV_NAME_ENTER( "kern subtable format 1" );

    gxvalid->statetable.optdata =
      &vt_rec;
    gxvalid->statetable.optdata_load_func =
      gxv_kern_subtable_fmt1_valueTable_load;
    gxvalid->statetable.subtable_setup_func =
      gxv_kern_subtable_fmt1_subtable_setup;
    gxvalid->statetable.entry_glyphoffset_fmt =
      GXV_GLYPHOFFSET_NONE;
    gxvalid->statetable.entry_validate_func =
      gxv_kern_subtable_fmt1_entry_validate;

    gxv_StateTable_validate( p, limit, gxvalid );

    GXV_EXIT;
  }
