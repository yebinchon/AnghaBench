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
struct ident {char const* email; char const* name; } ;
typedef  enum author { ____Placeholder_author } author ;

/* Variables and functions */
 int AUTHOR_ABBREVIATED ; 
 int AUTHOR_EMAIL ; 
 int AUTHOR_EMAIL_USER ; 
 int AUTHOR_NO ; 
 int FUNC0 (int) ; 
 char const* FUNC1 (char const*) ; 
 char const* FUNC2 (char const*) ; 

const char *
FUNC3(const struct ident *ident, int cols, enum author author)
{
	bool trim = FUNC0(cols);
	bool abbreviate = author == AUTHOR_ABBREVIATED || !trim;

	if (author == AUTHOR_NO || !ident)
		return "";
	if (author == AUTHOR_EMAIL && ident->email)
		return ident->email;
	if (author == AUTHOR_EMAIL_USER && ident->email)
		return FUNC2(ident->email);
	if (abbreviate && ident->name)
		return FUNC1(ident->name);
	return ident->name;
}