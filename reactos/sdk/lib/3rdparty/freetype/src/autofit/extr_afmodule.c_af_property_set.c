
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int increase_x_height; } ;
struct TYPE_10__ {size_t fallback_style; size_t default_script; int warping; void* no_stem_darkening; scalar_t__* darken_params; } ;
struct TYPE_9__ {scalar_t__ coverage; scalar_t__ script; } ;
struct TYPE_8__ {int limit; int face; } ;
typedef size_t FT_UInt ;
typedef TYPE_1__ FT_Prop_IncreaseXHeight ;
typedef int FT_Module ;
typedef scalar_t__ FT_Int ;
typedef int FT_Error ;
typedef void* FT_Bool ;
typedef TYPE_2__* AF_StyleClass ;
typedef TYPE_3__* AF_Module ;
typedef TYPE_4__* AF_FaceGlobals ;


 scalar_t__ AF_COVERAGE_DEFAULT ;
 TYPE_2__** AF_STYLE_CLASSES_GET ;
 void* FALSE ;
 int FT_Err_Ok ;
 int FT_THROW (int ) ;
 int FT_TRACE0 (char*) ;
 int FT_UNUSED (void*) ;
 int Invalid_Argument ;
 int Missing_Property ;
 void* TRUE ;
 int af_property_get_face_globals (int ,TYPE_4__**,TYPE_3__*) ;
 int ft_strcmp (char const*,char*) ;
 long ft_strtol (char const*,char**,int) ;

__attribute__((used)) static FT_Error
  af_property_set( FT_Module ft_module,
                   const char* property_name,
                   const void* value,
                   FT_Bool value_is_string )
  {
    FT_Error error = FT_Err_Ok;
    AF_Module module = (AF_Module)ft_module;


    FT_UNUSED( value_is_string );



    if ( !ft_strcmp( property_name, "fallback-script" ) )
    {
      FT_UInt* fallback_script;
      FT_UInt ss;







      fallback_script = (FT_UInt*)value;




      for ( ss = 0; AF_STYLE_CLASSES_GET[ss]; ss++ )
      {
        AF_StyleClass style_class = AF_STYLE_CLASSES_GET[ss];


        if ( (FT_UInt)style_class->script == *fallback_script &&
             style_class->coverage == AF_COVERAGE_DEFAULT )
        {
          module->fallback_style = ss;
          break;
        }
      }

      if ( !AF_STYLE_CLASSES_GET[ss] )
      {
        FT_TRACE0(( "af_property_set: Invalid value %d for property `%s'\n",
                    fallback_script, property_name ));
        return FT_THROW( Invalid_Argument );
      }

      return error;
    }
    else if ( !ft_strcmp( property_name, "default-script" ) )
    {
      FT_UInt* default_script;







      default_script = (FT_UInt*)value;

      module->default_script = *default_script;

      return error;
    }
    else if ( !ft_strcmp( property_name, "increase-x-height" ) )
    {
      FT_Prop_IncreaseXHeight* prop;
      AF_FaceGlobals globals;







      prop = (FT_Prop_IncreaseXHeight*)value;

      error = af_property_get_face_globals( prop->face, &globals, module );
      if ( !error )
        globals->increase_x_height = prop->limit;

      return error;
    }
    else if ( !ft_strcmp( property_name, "darkening-parameters" ) )
    {
      FT_Int* darken_params;
      FT_Int x1, y1, x2, y2, x3, y3, x4, y4;
        darken_params = (FT_Int*)value;

      x1 = darken_params[0];
      y1 = darken_params[1];
      x2 = darken_params[2];
      y2 = darken_params[3];
      x3 = darken_params[4];
      y3 = darken_params[5];
      x4 = darken_params[6];
      y4 = darken_params[7];

      if ( x1 < 0 || x2 < 0 || x3 < 0 || x4 < 0 ||
           y1 < 0 || y2 < 0 || y3 < 0 || y4 < 0 ||
           x1 > x2 || x2 > x3 || x3 > x4 ||
           y1 > 500 || y2 > 500 || y3 > 500 || y4 > 500 )
        return FT_THROW( Invalid_Argument );

      module->darken_params[0] = x1;
      module->darken_params[1] = y1;
      module->darken_params[2] = x2;
      module->darken_params[3] = y2;
      module->darken_params[4] = x3;
      module->darken_params[5] = y3;
      module->darken_params[6] = x4;
      module->darken_params[7] = y4;

      return error;
    }
    else if ( !ft_strcmp( property_name, "no-stem-darkening" ) )
    {
      {
        FT_Bool* no_stem_darkening = (FT_Bool*)value;


        module->no_stem_darkening = *no_stem_darkening;
      }

      return error;
    }

    FT_TRACE0(( "af_property_set: missing property `%s'\n",
                property_name ));
    return FT_THROW( Missing_Property );
  }
