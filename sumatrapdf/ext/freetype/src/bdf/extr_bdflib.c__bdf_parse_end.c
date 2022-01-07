
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Error ;


 int FT_Err_Ok ;
 int FT_UNUSED (void*) ;

__attribute__((used)) static FT_Error
  _bdf_parse_end( char* line,
                  unsigned long linelen,
                  unsigned long lineno,
                  void* call_data,
                  void* client_data )
  {


    FT_UNUSED( line );
    FT_UNUSED( linelen );
    FT_UNUSED( lineno );
    FT_UNUSED( call_data );
    FT_UNUSED( client_data );

    return FT_Err_Ok;
  }
