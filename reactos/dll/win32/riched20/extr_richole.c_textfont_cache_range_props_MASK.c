#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;
struct TYPE_6__ {int /*<<< orphan*/  str; } ;
struct TYPE_5__ {TYPE_4__* props; int /*<<< orphan*/  range; } ;
typedef  TYPE_1__ ITextFontImpl ;

/* Variables and functions */
 int FONT_NAME ; 
 int FONT_PROPID_FIRST ; 
 int FONT_PROPID_LAST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(ITextFontImpl *font)
{
    enum textfont_prop_id propid;
    for (propid = FONT_PROPID_FIRST; propid < FONT_PROPID_LAST; propid++) {
        if (propid == FONT_NAME)
            FUNC1(font->range, &font->props[propid].str);
        else
            FUNC0(font, propid, &font->props[propid]);
    }
}