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
typedef  int /*<<< orphan*/  u_int ;
struct format_tree {int dummy; } ;
struct format_modifier {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct format_modifier**,int /*<<< orphan*/ *,char const*,int,char**,int) ; 
 char* FUNC1 (struct format_tree*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct format_modifier*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const) ; 
 char* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const) ; 
 scalar_t__ FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char const) ; 
 char** FUNC9 (int,int) ; 
 char** FUNC10 (char**,int,int) ; 
 char* FUNC11 (char const*,int) ; 

__attribute__((used)) static struct format_modifier *
FUNC12(struct format_tree *ft, const char **s, u_int *count)
{
	const char		*cp = *s, *end;
	struct format_modifier	*list = NULL;
	char			 c, last[] = "X;:", **argv, *value;
	int			 argc;

	/*
	 * Modifiers are a ; separated list of the forms:
	 *      l,m,C,b,d,t,q,E,T,S,W,P,<,>
	 *	=a
	 *	=/a
	 *      =/a/
	 *	s/a/b/
	 *	s/a/b
	 *	||,&&,!=,==,<=,>=
	 */

	*count = 0;

	while (*cp != '\0' && *cp != ':') {
		/* Skip and separator character. */
		if (*cp == ';')
			cp++;

		/* Check single character modifiers with no arguments. */
		if (FUNC8("lbdtqETSWP<>", cp[0]) != NULL &&
		    FUNC3(cp[1])) {
			FUNC0(&list, count, cp, 1, NULL, 0);
			cp++;
			continue;
		}

		/* Then try double character with no arguments. */
		if ((FUNC7("||", cp, 2) == 0 ||
		    FUNC7("&&", cp, 2) == 0 ||
		    FUNC7("!=", cp, 2) == 0 ||
		    FUNC7("==", cp, 2) == 0 ||
		    FUNC7("<=", cp, 2) == 0 ||
		    FUNC7(">=", cp, 2) == 0) &&
		    FUNC3(cp[2])) {
			FUNC0(&list, count, cp, 2, NULL, 0);
			cp += 2;
			continue;
		}

		/* Now try single character with arguments. */
		if (FUNC8("mCs=", cp[0]) == NULL)
			break;
		c = cp[0];

		/* No arguments provided. */
		if (FUNC3(cp[1])) {
			FUNC0(&list, count, cp, 1, NULL, 0);
			cp++;
			continue;
		}
		argv = NULL;
		argc = 0;

		/* Single argument with no wrapper character. */
		if (!FUNC6(cp[1]) || cp[1] == '-') {
			end = FUNC4(cp + 1, ":;");
			if (end == NULL)
				break;

			argv = FUNC9(1, sizeof *argv);
			value = FUNC11(cp + 1, end - (cp + 1));
			argv[0] = FUNC1(ft, value);
			FUNC5(value);
			argc = 1;

			FUNC0(&list, count, &c, 1, argv, argc);
			cp = end;
			continue;
		}

		/* Multiple arguments with a wrapper character. */
		last[0] = cp[1];
		cp++;
		do {
			if (cp[0] == last[0] && FUNC3(cp[1])) {
				cp++;
				break;
			}
			end = FUNC4(cp + 1, last);
			if (end == NULL)
				break;
			cp++;

			argv = FUNC10 (argv, argc + 1, sizeof *argv);
			value = FUNC11(cp, end - cp);
			argv[argc++] = FUNC1(ft, value);
			FUNC5(value);

			cp = end;
		} while (!FUNC3(cp[0]));
		FUNC0(&list, count, &c, 1, argv, argc);
	}
	if (*cp != ':') {
		FUNC2(list, *count);
		*count = 0;
		return (NULL);
	}
	*s = cp + 1;
	return list;
}