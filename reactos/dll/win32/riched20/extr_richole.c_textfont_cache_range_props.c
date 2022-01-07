
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;
struct TYPE_6__ {int str; } ;
struct TYPE_5__ {TYPE_4__* props; int range; } ;
typedef TYPE_1__ ITextFontImpl ;


 int FONT_NAME ;
 int FONT_PROPID_FIRST ;
 int FONT_PROPID_LAST ;
 int get_textfont_prop (TYPE_1__*,int,TYPE_4__*) ;
 int textfont_getname_from_range (int ,int *) ;

__attribute__((used)) static void textfont_cache_range_props(ITextFontImpl *font)
{
    enum textfont_prop_id propid;
    for (propid = FONT_PROPID_FIRST; propid < FONT_PROPID_LAST; propid++) {
        if (propid == FONT_NAME)
            textfont_getname_from_range(font->range, &font->props[propid].str);
        else
            get_textfont_prop(font, propid, &font->props[propid]);
    }
}
