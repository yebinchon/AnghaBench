
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int increase_x_height; int glyph_styles; } ;
struct TYPE_12__ {size_t fallback_style; size_t default_script; int no_stem_darkening; int * darken_params; int warping; } ;
struct TYPE_11__ {size_t script; } ;
struct TYPE_10__ {int map; int face; } ;
struct TYPE_9__ {int limit; int face; } ;
typedef size_t FT_UInt ;
typedef TYPE_1__ FT_Prop_IncreaseXHeight ;
typedef TYPE_2__ FT_Prop_GlyphToScriptMap ;
typedef int FT_Module ;
typedef int FT_Int ;
typedef int FT_Error ;
typedef int FT_Bool ;
typedef TYPE_3__* AF_StyleClass ;
typedef TYPE_4__* AF_Module ;
typedef TYPE_5__* AF_FaceGlobals ;


 int FT_Err_Ok ;
 int FT_THROW (int ) ;
 int FT_TRACE0 (char*) ;
 int Missing_Property ;
 int af_property_get_face_globals (int ,TYPE_5__**,TYPE_4__*) ;
 TYPE_3__** af_style_classes ;
 int ft_strcmp (char const*,char*) ;

__attribute__((used)) static FT_Error
  af_property_get( FT_Module ft_module,
                   const char* property_name,
                   void* value )
  {
    FT_Error error = FT_Err_Ok;
    AF_Module module = (AF_Module)ft_module;
    FT_UInt fallback_style = module->fallback_style;
    FT_UInt default_script = module->default_script;





    if ( !ft_strcmp( property_name, "glyph-to-script-map" ) )
    {
      FT_Prop_GlyphToScriptMap* prop = (FT_Prop_GlyphToScriptMap*)value;
      AF_FaceGlobals globals;


      error = af_property_get_face_globals( prop->face, &globals, module );
      if ( !error )
        prop->map = globals->glyph_styles;

      return error;
    }
    else if ( !ft_strcmp( property_name, "fallback-script" ) )
    {
      FT_UInt* val = (FT_UInt*)value;

      AF_StyleClass style_class = af_style_classes[fallback_style];


      *val = style_class->script;

      return error;
    }
    else if ( !ft_strcmp( property_name, "default-script" ) )
    {
      FT_UInt* val = (FT_UInt*)value;


      *val = default_script;

      return error;
    }
    else if ( !ft_strcmp( property_name, "increase-x-height" ) )
    {
      FT_Prop_IncreaseXHeight* prop = (FT_Prop_IncreaseXHeight*)value;
      AF_FaceGlobals globals;


      error = af_property_get_face_globals( prop->face, &globals, module );
      if ( !error )
        prop->limit = globals->increase_x_height;

      return error;
    }
    else if ( !ft_strcmp( property_name, "darkening-parameters" ) )
    {
      FT_Int* darken_params = module->darken_params;
      FT_Int* val = (FT_Int*)value;


      val[0] = darken_params[0];
      val[1] = darken_params[1];
      val[2] = darken_params[2];
      val[3] = darken_params[3];
      val[4] = darken_params[4];
      val[5] = darken_params[5];
      val[6] = darken_params[6];
      val[7] = darken_params[7];

      return error;
    }
    else if ( !ft_strcmp( property_name, "no-stem-darkening" ) )
    {
      FT_Bool no_stem_darkening = module->no_stem_darkening;
      FT_Bool* val = (FT_Bool*)value;


      *val = no_stem_darkening;

      return error;
    }

    FT_TRACE0(( "af_property_get: missing property `%s'\n",
                property_name ));
    return FT_THROW( Missing_Property );
  }
