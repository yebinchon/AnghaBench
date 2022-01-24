#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int_u ;
typedef  scalar_t__ char_u ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ NUL ; 
 int PF_STYLE_ANTIALIAS ; 
 int PF_STYLE_BOLD ; 
 int PF_STYLE_ITALIC ; 
 int FUNC0 (scalar_t__*) ; 
 int TRUE ; 
 int FUNC1 (scalar_t__**) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (scalar_t__*,char) ; 
 scalar_t__* FUNC4 (scalar_t__*,int) ; 

__attribute__((used)) static int
FUNC5(
	char_u *vim_font,
	char_u **font_name,
	int_u *font_flags,
	int_u *font_size)
{
    char_u  *mark;
    int_u   name_len, size;

    mark = FUNC3(vim_font, ':');
    if (mark == NULL)
	name_len = FUNC0(vim_font);
    else
	name_len = (int_u) (mark - vim_font);

    *font_name = FUNC4(vim_font, name_len);
    if (*font_name != NULL)
    {
	if (mark != NULL)
	{
	    while (*mark != NUL && *mark++ == ':')
	    {
		switch (FUNC2(*mark++))
		{
		    case 'a': *font_flags |= PF_STYLE_ANTIALIAS; break;
		    case 'b': *font_flags |= PF_STYLE_BOLD; break;
		    case 'i': *font_flags |= PF_STYLE_ITALIC; break;

		    case 's':
			size = FUNC1(&mark);
			/* Restrict the size to some vague limits */
			if (size < 1 || size > 100)
			    size = 8;

			*font_size = size;
			break;

		    default:
			break;
		}
	    }
	}
	return TRUE;
    }
    return FALSE;
}