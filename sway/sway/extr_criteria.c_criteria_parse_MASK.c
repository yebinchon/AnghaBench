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
struct criteria {char* raw; int /*<<< orphan*/  window_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_LAST ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct criteria*) ; 
 scalar_t__ FUNC2 (struct criteria*) ; 
 char* error ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct criteria*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

struct criteria *FUNC10(char *raw, char **error_arg) {
	*error_arg = NULL;
	error = NULL;

	char *head = raw;
	FUNC5(&head);
	if (*head != '[') {
		*error_arg = FUNC6("No criteria");
		return NULL;
	}
	++head;

	struct criteria *criteria = FUNC0(1, sizeof(struct criteria));
#if HAVE_XWAYLAND
	criteria->window_type = ATOM_LAST; // default value
#endif
	char *name = NULL, *value = NULL;
	bool in_quotes = false;

	while (*head && *head != ']') {
		FUNC5(&head);
		// Parse token name
		char *namestart = head;
		while ((*head >= 'a' && *head <= 'z') || *head == '_') {
			++head;
		}
		name = FUNC0(head - namestart + 1, 1);
		if (head != namestart) {
			FUNC7(name, namestart, head - namestart);
		}
		// Parse token value
		FUNC5(&head);
		value = NULL;
		if (*head == '=') {
			++head;
			FUNC5(&head);
			if (*head == '"') {
				in_quotes = true;
				++head;
			}
			char *valuestart = head;
			if (in_quotes) {
				while (*head && (*head != '"' || *(head - 1) == '\\')) {
					++head;
				}
				if (!*head) {
					*error_arg = FUNC6("Quote mismatch in criteria");
					goto cleanup;
				}
			} else {
				while (*head && *head != ' ' && *head != ']') {
					++head;
				}
			}
			value = FUNC0(head - valuestart + 1, 1);
			FUNC7(value, valuestart, head - valuestart);
			if (in_quotes) {
				++head;
				in_quotes = false;
			}
			FUNC9(value);
			FUNC8(SWAY_DEBUG, "Found pair: %s=%s", name, value);
		}
		if (!FUNC4(criteria, name, value)) {
			*error_arg = error;
			goto cleanup;
		}
		FUNC5(&head);
		FUNC3(name);
		FUNC3(value);
		name = NULL;
		value = NULL;
	}
	if (*head != ']') {
		*error_arg = FUNC6("No closing brace found in criteria");
		goto cleanup;
	}

	if (FUNC2(criteria)) {
		*error_arg = FUNC6("Criteria is empty");
		goto cleanup;
	}

	++head;
	int len = head - raw;
	criteria->raw = FUNC0(len + 1, 1);
	FUNC7(criteria->raw, raw, len);
	return criteria;

cleanup:
	FUNC3(name);
	FUNC3(value);
	FUNC1(criteria);
	return NULL;
}