#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* l; void* f; int /*<<< orphan*/ * str; } ;
typedef  TYPE_1__ textfont_prop_val ;
typedef  enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  FONT_ALLCAPS 151 
#define  FONT_ANIMATION 150 
#define  FONT_BACKCOLOR 149 
#define  FONT_BOLD 148 
#define  FONT_EMBOSS 147 
#define  FONT_ENGRAVE 146 
#define  FONT_FORECOLOR 145 
#define  FONT_HIDDEN 144 
#define  FONT_ITALIC 143 
#define  FONT_KERNING 142 
#define  FONT_LANGID 141 
#define  FONT_NAME 140 
#define  FONT_OUTLINE 139 
#define  FONT_POSITION 138 
#define  FONT_PROTECTED 137 
#define  FONT_SHADOW 136 
#define  FONT_SIZE 135 
#define  FONT_SMALLCAPS 134 
#define  FONT_SPACING 133 
#define  FONT_STRIKETHROUGH 132 
#define  FONT_SUBSCRIPT 131 
#define  FONT_SUPERSCRIPT 130 
#define  FONT_UNDERLINE 129 
#define  FONT_WEIGHT 128 
 void* tomUndefined ; 

__attribute__((used)) static inline void FUNC1(enum textfont_prop_id propid, textfont_prop_val *v)
{
    switch (propid)
    {
    case FONT_ALLCAPS:
    case FONT_ANIMATION:
    case FONT_BACKCOLOR:
    case FONT_BOLD:
    case FONT_EMBOSS:
    case FONT_FORECOLOR:
    case FONT_HIDDEN:
    case FONT_ENGRAVE:
    case FONT_ITALIC:
    case FONT_KERNING:
    case FONT_LANGID:
    case FONT_OUTLINE:
    case FONT_PROTECTED:
    case FONT_SHADOW:
    case FONT_SMALLCAPS:
    case FONT_STRIKETHROUGH:
    case FONT_SUBSCRIPT:
    case FONT_SUPERSCRIPT:
    case FONT_UNDERLINE:
    case FONT_WEIGHT:
        v->l = tomUndefined;
        return;
    case FONT_NAME:
        v->str = NULL;
        return;
    case FONT_POSITION:
    case FONT_SIZE:
    case FONT_SPACING:
        v->f = tomUndefined;
        return;
    default:
        FUNC0("unhandled font property %d\n", propid);
        v->l = tomUndefined;
        return;
    }
}