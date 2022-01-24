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
typedef  int u_char ;
struct tm {int dummy; } ;
struct format_tree {scalar_t__ loop; int flags; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 scalar_t__ FORMAT_LOOP_LIMIT ; 
 int FORMAT_NOJOBS ; 
 char* FUNC0 (struct format_tree*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct format_tree*,char*,...) ; 
 scalar_t__ FUNC2 (struct format_tree*) ; 
 char** format_lower ; 
 int /*<<< orphan*/  FUNC3 (struct format_tree*,char const*,size_t,char**,size_t*,size_t*) ; 
 char* FUNC4 (char*,char*) ; 
 char** format_upper ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct tm* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 
 scalar_t__ FUNC9 (char*,int,char const*,struct tm*) ; 
 size_t FUNC10 (char const*) ; 
 char* FUNC11 (size_t) ; 
 char* FUNC12 (char*,int,size_t) ; 
 char* FUNC13 (char*) ; 
 char* FUNC14 (char const*,size_t) ; 

__attribute__((used)) static char *
FUNC15(struct format_tree *ft, const char *fmt, int time)
{
	char		*buf, *out, *name;
	const char	*ptr, *s;
	size_t		 off, len, n, outlen;
	int     	 ch, brackets;
	struct tm	*tm;
	char		 expanded[8192];

	if (fmt == NULL || *fmt == '\0')
		return (FUNC13(""));

	if (ft->loop == FORMAT_LOOP_LIMIT)
		return (FUNC13(""));
	ft->loop++;

	FUNC1(ft, "expanding format: %s", fmt);

	if (time) {
		tm = FUNC6(&ft->time);
		if (FUNC9(expanded, sizeof expanded, fmt, tm) == 0) {
			FUNC1(ft, "format is too long");
			return (FUNC13(""));
		}
		if (FUNC2(ft) && FUNC8(expanded, fmt) != 0)
			FUNC1(ft, "after time expanded: %s", expanded);
		fmt = expanded;
	}

	len = 64;
	buf = FUNC11(len);
	off = 0;

	while (*fmt != '\0') {
		if (*fmt != '#') {
			while (len - off < 2) {
				buf = FUNC12(buf, 2, len);
				len *= 2;
			}
			buf[off++] = *fmt++;
			continue;
		}
		fmt++;

		ch = (u_char)*fmt++;
		switch (ch) {
		case '(':
			brackets = 1;
			for (ptr = fmt; *ptr != '\0'; ptr++) {
				if (*ptr == '(')
					brackets++;
				if (*ptr == ')' && --brackets == 0)
					break;
			}
			if (*ptr != ')' || brackets != 0)
				break;
			n = ptr - fmt;

			name = FUNC14(fmt, n);
			FUNC1(ft, "found #(): %s", name);

			if (ft->flags & FORMAT_NOJOBS) {
				out = FUNC13("");
				FUNC1(ft, "#() is disabled");
			} else {
				out = FUNC0(ft, name);
				FUNC1(ft, "#() result: %s", out);
			}
			FUNC5(name);

			outlen = FUNC10(out);
			while (len - off < outlen + 1) {
				buf = FUNC12(buf, 2, len);
				len *= 2;
			}
			FUNC7(buf + off, out, outlen);
			off += outlen;

			FUNC5(out);

			fmt += n + 1;
			continue;
		case '{':
			ptr = FUNC4((char *)fmt - 2, "}");
			if (ptr == NULL)
				break;
			n = ptr - fmt;

			FUNC1(ft, "found #{}: %.*s", (int)n, fmt);
			if (FUNC3(ft, fmt, n, &buf, &len, &off) != 0)
				break;
			fmt += n + 1;
			continue;
		case '}':
		case '#':
		case ',':
			FUNC1(ft, "found #%c", ch);
			while (len - off < 2) {
				buf = FUNC12(buf, 2, len);
				len *= 2;
			}
			buf[off++] = ch;
			continue;
		default:
			s = NULL;
			if (ch >= 'A' && ch <= 'Z')
				s = format_upper[ch - 'A'];
			else if (ch >= 'a' && ch <= 'z')
				s = format_lower[ch - 'a'];
			if (s == NULL) {
				while (len - off < 3) {
					buf = FUNC12(buf, 2, len);
					len *= 2;
				}
				buf[off++] = '#';
				buf[off++] = ch;
				continue;
			}
			n = FUNC10(s);
			FUNC1(ft, "found #%c: %s", ch, s);
			if (FUNC3(ft, s, n, &buf, &len, &off) != 0)
				break;
			continue;
		}

		break;
	}
	buf[off] = '\0';

	FUNC1(ft, "result is: %s", buf);
	ft->loop--;

	return (buf);
}