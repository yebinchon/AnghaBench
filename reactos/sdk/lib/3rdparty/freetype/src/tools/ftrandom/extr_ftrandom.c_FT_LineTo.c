
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void FT_Vector ;


 int FT_UNUSED (void*) ;

__attribute__((used)) static int
  FT_LineTo( const FT_Vector *to,
             void *user )
  {
    FT_UNUSED( to );
    FT_UNUSED( user );

    return 0;
  }
