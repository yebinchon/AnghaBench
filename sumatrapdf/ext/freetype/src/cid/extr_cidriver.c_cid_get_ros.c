
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* registry; char* ordering; int supplement; } ;
struct TYPE_5__ {TYPE_1__ cid; } ;
typedef int FT_Int ;
typedef int FT_Error ;
typedef TYPE_1__* CID_FaceInfo ;
typedef TYPE_2__* CID_Face ;


 int FT_Err_Ok ;

__attribute__((used)) static FT_Error
  cid_get_ros( CID_Face face,
               const char* *registry,
               const char* *ordering,
               FT_Int *supplement )
  {
    CID_FaceInfo cid = &face->cid;


    if ( registry )
      *registry = cid->registry;

    if ( ordering )
      *ordering = cid->ordering;

    if ( supplement )
      *supplement = cid->supplement;

    return FT_Err_Ok;
  }
