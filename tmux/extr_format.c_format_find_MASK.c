#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct options_entry {int dummy; } ;
struct format_tree {TYPE_3__* s; int /*<<< orphan*/  tree; TYPE_2__* w; TYPE_1__* wp; } ;
struct format_entry {char* key; scalar_t__ t; char* value; int /*<<< orphan*/  (* cb ) (struct format_tree*,struct format_entry*) ;} ;
struct environ_entry {char* value; } ;
struct TYPE_6__ {int /*<<< orphan*/  environ; int /*<<< orphan*/  options; } ;
struct TYPE_5__ {int /*<<< orphan*/  options; } ;
struct TYPE_4__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int FORMAT_BASENAME ; 
 int FORMAT_DIRNAME ; 
 int FORMAT_QUOTE ; 
 int FORMAT_TIMESTRING ; 
 struct format_entry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct format_entry*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*) ; 
 char* FUNC3 (char*) ; 
 struct environ_entry* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  format_entry_tree ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  global_environ ; 
 int /*<<< orphan*/  global_options ; 
 int /*<<< orphan*/  global_s_options ; 
 int /*<<< orphan*/  global_w_options ; 
 struct options_entry* FUNC7 (int /*<<< orphan*/ ,char const*,int*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct options_entry*,int,int) ; 
 size_t FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct format_tree*,struct format_entry*) ; 
 int /*<<< orphan*/  FUNC11 (char**,char*,long long) ; 
 void* FUNC12 (char*) ; 

__attribute__((used)) static char *
FUNC13(struct format_tree *ft, const char *key, int modifiers)
{
	struct format_entry	*fe, fe_find;
	struct environ_entry	*envent;
	static char		 s[64];
	struct options_entry	*o;
	int			 idx;
	char			*found, *saved;

	if (~modifiers & FORMAT_TIMESTRING) {
		o = FUNC7(global_options, key, &idx, 0);
		if (o == NULL && ft->wp != NULL)
			o = FUNC7(ft->wp->options, key, &idx, 0);
		if (o == NULL && ft->w != NULL)
			o = FUNC7(ft->w->options, key, &idx, 0);
		if (o == NULL)
			o = FUNC7(global_w_options, key, &idx, 0);
		if (o == NULL && ft->s != NULL)
			o = FUNC7(ft->s->options, key, &idx, 0);
		if (o == NULL)
			o = FUNC7(global_s_options, key, &idx, 0);
		if (o != NULL) {
			found = FUNC8(o, idx, 1);
			goto found;
		}
	}
	found = NULL;

	fe_find.key = (char *) key;
	fe = FUNC0(format_entry_tree, &ft->tree, &fe_find);
	if (fe != NULL) {
		if (modifiers & FORMAT_TIMESTRING) {
			if (fe->t == 0)
				return (NULL);
			FUNC2(&fe->t, s);
			s[FUNC9(s, "\n")] = '\0';
			found = FUNC12(s);
			goto found;
		}
		if (fe->t != 0) {
			FUNC11(&found, "%lld", (long long)fe->t);
			goto found;
		}
		if (fe->value == NULL && fe->cb != NULL) {
			fe->cb(ft, fe);
			if (fe->value == NULL)
				fe->value = FUNC12("");
		}
		found = FUNC12(fe->value);
		goto found;
	}

	if (~modifiers & FORMAT_TIMESTRING) {
		envent = NULL;
		if (ft->s != NULL)
			envent = FUNC4(ft->s->environ, key);
		if (envent == NULL)
			envent = FUNC4(global_environ, key);
		if (envent != NULL && envent->value != NULL) {
			found = FUNC12(envent->value);
			goto found;
		}
	}

	return (NULL);

found:
	if (found == NULL)
		return (NULL);
	if (modifiers & FORMAT_BASENAME) {
		saved = found;
		found = FUNC12(FUNC1(saved));
		FUNC6(saved);
	}
	if (modifiers & FORMAT_DIRNAME) {
		saved = found;
		found = FUNC12(FUNC3(saved));
		FUNC6(saved);
	}
	if (modifiers & FORMAT_QUOTE) {
		saved = found;
		found = FUNC12(FUNC5(saved));
		FUNC6(saved);
	}
	return (found);
}