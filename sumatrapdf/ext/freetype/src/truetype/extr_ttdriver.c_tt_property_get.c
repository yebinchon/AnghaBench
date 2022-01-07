
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interpreter_version; } ;
typedef TYPE_1__* TT_Driver ;
typedef int FT_UInt ;
typedef int FT_Module ;
typedef int FT_Error ;


 int FT_Err_Ok ;
 int FT_THROW (int ) ;
 int FT_TRACE0 (char*) ;
 int Missing_Property ;
 int ft_strcmp (char const*,char*) ;

__attribute__((used)) static FT_Error
  tt_property_get( FT_Module module,
                   const char* property_name,
                   const void* value )
  {
    FT_Error error = FT_Err_Ok;
    TT_Driver driver = (TT_Driver)module;

    FT_UInt interpreter_version = driver->interpreter_version;


    if ( !ft_strcmp( property_name, "interpreter-version" ) )
    {
      FT_UInt* val = (FT_UInt*)value;


      *val = interpreter_version;

      return error;
    }

    FT_TRACE0(( "tt_property_get: missing property `%s'\n",
                property_name ));
    return FT_THROW( Missing_Property );
  }
