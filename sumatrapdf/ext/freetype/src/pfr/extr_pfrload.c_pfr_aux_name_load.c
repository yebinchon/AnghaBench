
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_UInt ;
typedef scalar_t__ FT_String ;
typedef int FT_Memory ;
typedef int FT_Error ;
typedef int FT_Byte ;


 scalar_t__ FT_ALLOC (scalar_t__*,int) ;
 int FT_Err_Ok ;
 int FT_FREE (scalar_t__*) ;
 int FT_MEM_COPY (scalar_t__*,int*,int) ;

__attribute__((used)) static FT_Error
  pfr_aux_name_load( FT_Byte* p,
                     FT_UInt len,
                     FT_Memory memory,
                     FT_String* *astring )
  {
    FT_Error error = FT_Err_Ok;
    FT_String* result = ((void*)0);
    FT_UInt n, ok;


    if ( *astring )
      FT_FREE( *astring );

    if ( len > 0 && p[len - 1] == 0 )
      len--;



    ok = ( len > 0 );
    for ( n = 0; n < len; n++ )
      if ( p[n] < 32 || p[n] > 127 )
      {
        ok = 0;
        break;
      }

    if ( ok )
    {
      if ( FT_ALLOC( result, len + 1 ) )
        goto Exit;

      FT_MEM_COPY( result, p, len );
      result[len] = 0;
    }

  Exit:
    *astring = result;
    return error;
  }
