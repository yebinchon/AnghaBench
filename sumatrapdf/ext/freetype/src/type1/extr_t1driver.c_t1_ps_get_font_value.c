
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int val ;
struct TYPE_14__ {int is_fixed_pitch; scalar_t__ italic_angle; scalar_t__ weight; scalar_t__ family_name; scalar_t__ full_name; scalar_t__ notice; scalar_t__ version; int underline_thickness; int underline_position; } ;
struct TYPE_13__ {int fs_type; } ;
struct TYPE_12__ {int num_blue_values; int num_other_blues; int num_family_blues; int num_family_other_blues; int num_snap_widths; int num_snap_heights; int round_stem_up; int force_bold; scalar_t__ password; scalar_t__ language_group; int lenIV; int * min_feature; int * snap_heights; int * snap_widths; int * family_other_blues; int * family_blues; int * other_blues; int blue_shift; int blue_fuzz; int blue_scale; int * blue_values; int * standard_height; int * standard_width; int unique_id; } ;
struct TYPE_11__ {scalar_t__* char_name; int num_chars; } ;
struct TYPE_10__ {int yMax; int xMax; int yMin; int xMin; } ;
struct TYPE_9__ {int yy; int yx; int xy; int xx; } ;
struct TYPE_15__ {int font_type; int paint_type; TYPE_6__ font_info; TYPE_5__ font_extra; TYPE_4__ private_dict; scalar_t__* subrs; int * subrs_len; int num_subrs; int subrs_hash; TYPE_3__ encoding; int encoding_type; scalar_t__* charstrings; int * charstrings_len; int num_glyphs; scalar_t__* glyph_names; scalar_t__ font_name; TYPE_2__ font_bbox; TYPE_1__ font_matrix; } ;
struct TYPE_16__ {TYPE_7__ type1; } ;
typedef TYPE_7__* T1_Font ;
typedef TYPE_8__* T1_Face ;
typedef int T1_EncodingType ;
typedef int PS_Dict_Keys ;
typedef int FT_UShort ;
typedef size_t FT_ULong ;
typedef int FT_UInt ;
typedef int FT_Short ;
typedef scalar_t__ FT_Long ;
typedef int FT_Int ;
typedef int FT_Fixed ;
typedef int FT_Face ;
typedef int FT_Char ;
typedef int FT_Byte ;
typedef int FT_Bool ;
 int T1_ENCODING_TYPE_ARRAY ;
 size_t* ft_hash_num_lookup (int ,int ) ;
 int ft_memcpy (void*,void*,size_t) ;
 int ft_strlen (scalar_t__) ;

__attribute__((used)) static FT_Long
  t1_ps_get_font_value( FT_Face face,
                        PS_Dict_Keys key,
                        FT_UInt idx,
                        void *value,
                        FT_Long value_len_ )
  {
    FT_ULong retval = 0;
    FT_ULong value_len = value_len_ < 0 ? 0 : (FT_ULong)value_len_;

    T1_Face t1face = (T1_Face)face;
    T1_Font type1 = &t1face->type1;


    switch ( key )
    {
    case 159:
      retval = sizeof ( type1->font_type );
      if ( value && value_len >= retval )
        *((FT_Byte *)value) = type1->font_type;
      break;

    case 161:
      if ( idx < sizeof ( type1->font_matrix ) /
                   sizeof ( type1->font_matrix.xx ) )
      {
        FT_Fixed val = 0;


        retval = sizeof ( val );
        if ( value && value_len >= retval )
        {
          switch ( idx )
          {
          case 0:
            val = type1->font_matrix.xx;
            break;
          case 1:
            val = type1->font_matrix.xy;
            break;
          case 2:
            val = type1->font_matrix.yx;
            break;
          case 3:
            val = type1->font_matrix.yy;
            break;
          }
          *((FT_Fixed *)value) = val;
        }
      }
      break;

    case 162:
      if ( idx < sizeof ( type1->font_bbox ) /
                   sizeof ( type1->font_bbox.xMin ) )
      {
        FT_Fixed val = 0;


        retval = sizeof ( val );
        if ( value && value_len >= retval )
        {
          switch ( idx )
          {
          case 0:
            val = type1->font_bbox.xMin;
            break;
          case 1:
            val = type1->font_bbox.yMin;
            break;
          case 2:
            val = type1->font_bbox.xMax;
            break;
          case 3:
            val = type1->font_bbox.yMax;
            break;
          }
          *((FT_Fixed *)value) = val;
        }
      }
      break;

    case 140:
      retval = sizeof ( type1->paint_type );
      if ( value && value_len >= retval )
        *((FT_Byte *)value) = type1->paint_type;
      break;

    case 160:
      if ( type1->font_name )
      {
        retval = ft_strlen( type1->font_name ) + 1;
        if ( value && value_len >= retval )
          ft_memcpy( value, (void *)( type1->font_name ), retval );
      }
      break;

    case 130:
      retval = sizeof ( type1->private_dict.unique_id );
      if ( value && value_len >= retval )
        *((FT_Int *)value) = type1->private_dict.unique_id;
      break;

    case 148:
      retval = sizeof ( type1->num_glyphs );
      if ( value && value_len >= retval )
        *((FT_Int *)value) = type1->num_glyphs;
      break;

    case 168:
      if ( idx < (FT_UInt)type1->num_glyphs )
      {
        retval = ft_strlen( type1->glyph_names[idx] ) + 1;
        if ( value && value_len >= retval )
        {
          ft_memcpy( value, (void *)( type1->glyph_names[idx] ), retval );
          ((FT_Char *)value)[retval - 1] = (FT_Char)'\0';
        }
      }
      break;

    case 169:
      if ( idx < (FT_UInt)type1->num_glyphs )
      {
        retval = type1->charstrings_len[idx] + 1;
        if ( value && value_len >= retval )
        {
          ft_memcpy( value, (void *)( type1->charstrings[idx] ),
                     retval - 1 );
          ((FT_Char *)value)[retval - 1] = (FT_Char)'\0';
        }
      }
      break;

    case 166:
      retval = sizeof ( type1->encoding_type );
      if ( value && value_len >= retval )
        *((T1_EncodingType *)value) = type1->encoding_type;
      break;

    case 167:
      if ( type1->encoding_type == T1_ENCODING_TYPE_ARRAY &&
           idx < (FT_UInt)type1->encoding.num_chars )
      {
        retval = ft_strlen( type1->encoding.char_name[idx] ) + 1;
        if ( value && value_len >= retval )
        {
          ft_memcpy( value, (void *)( type1->encoding.char_name[idx] ),
                     retval - 1 );
          ((FT_Char *)value)[retval - 1] = (FT_Char)'\0';
        }
      }
      break;

    case 142:
      retval = sizeof ( type1->num_subrs );
      if ( value && value_len >= retval )
        *((FT_Int *)value) = type1->num_subrs;
      break;

    case 133:
      {
        FT_Bool ok = 0;


        if ( type1->subrs_hash )
        {

          size_t* val = ft_hash_num_lookup( (FT_Int)idx,
                                             type1->subrs_hash );


          if ( val )
          {
            idx = *val;
            ok = 1;
          }
        }
        else
        {
          if ( idx < (FT_UInt)type1->num_subrs )
            ok = 1;
        }

        if ( ok && type1->subrs )
        {
          retval = type1->subrs_len[idx] + 1;
          if ( value && value_len >= retval )
          {
            ft_memcpy( value, (void *)( type1->subrs[idx] ), retval - 1 );
            ((FT_Char *)value)[retval - 1] = (FT_Char)'\0';
          }
        }
      }
      break;

    case 137:
      retval = sizeof ( type1->private_dict.standard_width[0] );
      if ( value && value_len >= retval )
        *((FT_UShort *)value) = type1->private_dict.standard_width[0];
      break;

    case 136:
      retval = sizeof ( type1->private_dict.standard_height[0] );
      if ( value && value_len >= retval )
        *((FT_UShort *)value) = type1->private_dict.standard_height[0];
      break;

    case 149:
      retval = sizeof ( type1->private_dict.num_blue_values );
      if ( value && value_len >= retval )
        *((FT_Byte *)value) = type1->private_dict.num_blue_values;
      break;

    case 170:
      if ( idx < type1->private_dict.num_blue_values )
      {
        retval = sizeof ( type1->private_dict.blue_values[idx] );
        if ( value && value_len >= retval )
          *((FT_Short *)value) = type1->private_dict.blue_values[idx];
      }
      break;

    case 172:
      retval = sizeof ( type1->private_dict.blue_scale );
      if ( value && value_len >= retval )
        *((FT_Fixed *)value) = type1->private_dict.blue_scale;
      break;

    case 173:
      retval = sizeof ( type1->private_dict.blue_fuzz );
      if ( value && value_len >= retval )
        *((FT_Int *)value) = type1->private_dict.blue_fuzz;
      break;

    case 171:
      retval = sizeof ( type1->private_dict.blue_shift );
      if ( value && value_len >= retval )
        *((FT_Int *)value) = type1->private_dict.blue_shift;
      break;

    case 145:
      retval = sizeof ( type1->private_dict.num_other_blues );
      if ( value && value_len >= retval )
        *((FT_Byte *)value) = type1->private_dict.num_other_blues;
      break;

    case 141:
      if ( idx < type1->private_dict.num_other_blues )
      {
        retval = sizeof ( type1->private_dict.other_blues[idx] );
        if ( value && value_len >= retval )
          *((FT_Short *)value) = type1->private_dict.other_blues[idx];
      }
      break;

    case 147:
      retval = sizeof ( type1->private_dict.num_family_blues );
      if ( value && value_len >= retval )
        *((FT_Byte *)value) = type1->private_dict.num_family_blues;
      break;

    case 165:
      if ( idx < type1->private_dict.num_family_blues )
      {
        retval = sizeof ( type1->private_dict.family_blues[idx] );
        if ( value && value_len >= retval )
          *((FT_Short *)value) = type1->private_dict.family_blues[idx];
      }
      break;

    case 146:
      retval = sizeof ( type1->private_dict.num_family_other_blues );
      if ( value && value_len >= retval )
        *((FT_Byte *)value) = type1->private_dict.num_family_other_blues;
      break;

    case 163:
      if ( idx < type1->private_dict.num_family_other_blues )
      {
        retval = sizeof ( type1->private_dict.family_other_blues[idx] );
        if ( value && value_len >= retval )
          *((FT_Short *)value) = type1->private_dict.family_other_blues[idx];
      }
      break;

    case 144:
      retval = sizeof ( type1->private_dict.num_snap_widths );
      if ( value && value_len >= retval )
        *((FT_Byte *)value) = type1->private_dict.num_snap_widths;
      break;

    case 135:
      if ( idx < type1->private_dict.num_snap_widths )
      {
        retval = sizeof ( type1->private_dict.snap_widths[idx] );
        if ( value && value_len >= retval )
          *((FT_Short *)value) = type1->private_dict.snap_widths[idx];
      }
      break;

    case 143:
      retval = sizeof ( type1->private_dict.num_snap_heights );
      if ( value && value_len >= retval )
        *((FT_Byte *)value) = type1->private_dict.num_snap_heights;
      break;

    case 134:
      if ( idx < type1->private_dict.num_snap_heights )
      {
        retval = sizeof ( type1->private_dict.snap_heights[idx] );
        if ( value && value_len >= retval )
          *((FT_Short *)value) = type1->private_dict.snap_heights[idx];
      }
      break;

    case 138:
      retval = sizeof ( type1->private_dict.round_stem_up );
      if ( value && value_len >= retval )
        *((FT_Bool *)value) = type1->private_dict.round_stem_up;
      break;

    case 158:
      retval = sizeof ( type1->private_dict.force_bold );
      if ( value && value_len >= retval )
        *((FT_Bool *)value) = type1->private_dict.force_bold;
      break;

    case 151:
      if ( idx < sizeof ( type1->private_dict.min_feature ) /
                   sizeof ( type1->private_dict.min_feature[0] ) )
      {
        retval = sizeof ( type1->private_dict.min_feature[idx] );
        if ( value && value_len >= retval )
          *((FT_Short *)value) = type1->private_dict.min_feature[idx];
      }
      break;

    case 152:
      retval = sizeof ( type1->private_dict.lenIV );
      if ( value && value_len >= retval )
        *((FT_Int *)value) = type1->private_dict.lenIV;
      break;

    case 139:
      retval = sizeof ( type1->private_dict.password );
      if ( value && value_len >= retval )
        *((FT_Long *)value) = type1->private_dict.password;
      break;

    case 153:
      retval = sizeof ( type1->private_dict.language_group );
      if ( value && value_len >= retval )
        *((FT_Long *)value) = type1->private_dict.language_group;
      break;

    case 155:
      retval = sizeof ( type1->font_info.is_fixed_pitch );
      if ( value && value_len >= retval )
        *((FT_Bool *)value) = type1->font_info.is_fixed_pitch;
      break;

    case 132:
      retval = sizeof ( type1->font_info.underline_position );
      if ( value && value_len >= retval )
        *((FT_Short *)value) = type1->font_info.underline_position;
      break;

    case 131:
      retval = sizeof ( type1->font_info.underline_thickness );
      if ( value && value_len >= retval )
        *((FT_UShort *)value) = type1->font_info.underline_thickness;
      break;

    case 157:
      retval = sizeof ( type1->font_extra.fs_type );
      if ( value && value_len >= retval )
        *((FT_UShort *)value) = type1->font_extra.fs_type;
      break;

    case 129:
      if ( type1->font_info.version )
      {
        retval = ft_strlen( type1->font_info.version ) + 1;
        if ( value && value_len >= retval )
          ft_memcpy( value, (void *)( type1->font_info.version ), retval );
      }
      break;

    case 150:
      if ( type1->font_info.notice )
      {
        retval = ft_strlen( type1->font_info.notice ) + 1;
        if ( value && value_len >= retval )
          ft_memcpy( value, (void *)( type1->font_info.notice ), retval );
      }
      break;

    case 156:
      if ( type1->font_info.full_name )
      {
        retval = ft_strlen( type1->font_info.full_name ) + 1;
        if ( value && value_len >= retval )
          ft_memcpy( value, (void *)( type1->font_info.full_name ), retval );
      }
      break;

    case 164:
      if ( type1->font_info.family_name )
      {
        retval = ft_strlen( type1->font_info.family_name ) + 1;
        if ( value && value_len >= retval )
          ft_memcpy( value, (void *)( type1->font_info.family_name ),
                     retval );
      }
      break;

    case 128:
      if ( type1->font_info.weight )
      {
        retval = ft_strlen( type1->font_info.weight ) + 1;
        if ( value && value_len >= retval )
          ft_memcpy( value, (void *)( type1->font_info.weight ), retval );
      }
      break;

    case 154:
      retval = sizeof ( type1->font_info.italic_angle );
      if ( value && value_len >= retval )
        *((FT_Long *)value) = type1->font_info.italic_angle;
      break;
    }

    return retval == 0 ? -1 : (FT_Long)retval;
  }
