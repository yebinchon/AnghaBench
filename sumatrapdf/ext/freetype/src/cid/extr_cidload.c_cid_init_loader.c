
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CID_Loader ;
typedef int CID_Face ;


 int FT_UNUSED (int ) ;
 int FT_ZERO (int *) ;

__attribute__((used)) static void
  cid_init_loader( CID_Loader* loader,
                   CID_Face face )
  {
    FT_UNUSED( face );

    FT_ZERO( loader );
  }
