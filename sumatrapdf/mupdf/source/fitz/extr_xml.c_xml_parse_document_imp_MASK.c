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
struct parser {int dummy; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct parser*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct parser*,char*,char*) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct parser*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct parser*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct parser*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct parser*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct parser*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct parser*,char*,char*) ; 

__attribute__((used)) static char *FUNC11(fz_context *ctx, struct parser *parser, char *p)
{
	char *mark;
	int quote;
	int autoclose;
	char *q;

parse_text:
	mark = p;
	while (*p && *p != '<') ++p;
	if (*p == '<') {
		/* skip trailing newline before closing tag */
		if (p[1] == '/' && mark < p - 1 && p[-1] == '\n')
			FUNC10(ctx, parser, mark, p - 1);
		else if (mark < p)
			FUNC10(ctx, parser, mark, p);
		++p;
		goto parse_element;
	} else if (mark < p)
		FUNC10(ctx, parser, mark, p);
	return NULL;

parse_element:
	if (*p == '/') { ++p; goto parse_closing_element; }
	if (*p == '!') { ++p; goto parse_comment; }
	if (*p == '?') { ++p; goto parse_processing_instruction; }
	while (FUNC1(*p)) ++p;
	if (FUNC0(*p))
		goto parse_element_name;
	return "syntax error in element";

parse_comment:
	if (p[0]=='D' && p[1]=='O' && p[2]=='C' && p[3]=='T' && p[4]=='Y' && p[5]=='P' && p[6]=='E')
		goto parse_declaration;
	if (p[0]=='E' && p[1]=='N' && p[2]=='T' && p[3]=='I' && p[4]=='T' && p[5]=='Y')
		goto parse_declaration;
	if (*p == '[') goto parse_cdata;
	if (*p++ != '-') return "syntax error in comment (<! not followed by --)";
	if (*p++ != '-') return "syntax error in comment (<!- not followed by -)";
	while (*p) {
		if (p[0] == '-' && p[1] == '-' && p[2] == '>') {
			p += 3;
			goto parse_text;
		}
		++p;
	}
	return "end of data in comment";

parse_declaration:
	while (*p) if (*p++ == '>') goto parse_text;
	return "end of data in declaration";

parse_cdata:
	if (p[1] != 'C' || p[2] != 'D' || p[3] != 'A' || p[4] != 'T' || p[5] != 'A' || p[6] != '[')
		return "syntax error in CDATA section";
	p += 7;
	mark = p;
	while (*p) {
		if (p[0] == ']' && p[1] == ']' && p[2] == '>') {
			FUNC7(ctx, parser, mark, p);
			p += 3;
			goto parse_text;
		}
		++p;
	}
	return "end of data in CDATA section";

parse_processing_instruction:
	while (*p) {
		if (p[0] == '?' && p[1] == '>') {
			p += 2;
			goto parse_text;
		}
		++p;
	}
	return "end of data in processing instruction";

parse_closing_element:
	while (FUNC1(*p)) ++p;
	mark = p;
	while (FUNC0(*p)) ++p;
	q = p;
	while (FUNC1(*p)) ++p;
	if (*p != '>')
		return "syntax error in closing element";
	mark = FUNC4(mark, q);
	if (FUNC2(ctx, parser, mark, q))
		FUNC8(ctx, parser);
	++p;
	goto parse_text;

parse_element_name:
	mark = p;
	while (FUNC0(*p)) ++p;
	mark = FUNC4(mark, p);
	FUNC3(ctx, parser, mark, p);
	autoclose = FUNC9(ctx, parser, mark, p, 0);
	if (*p == '>') {
		if (autoclose)
			FUNC8(ctx, parser);
		++p;
		if (*p == '\n') ++p; /* must skip linebreak immediately after an opening tag */
		goto parse_text;
	}
	if (p[0] == '/' && p[1] == '>') {
		FUNC8(ctx, parser);
		p += 2;
		goto parse_text;
	}
	if (FUNC1(*p))
		goto parse_attributes;
	return "syntax error after element name";

parse_attributes:
	while (FUNC1(*p)) ++p;
	if (FUNC0(*p))
		goto parse_attribute_name;
	if (*p == '>') {
		if (autoclose)
			FUNC8(ctx, parser);
		++p;
		if (*p == '\n') ++p; /* must skip linebreak immediately after an opening tag */
		goto parse_text;
	}
	if (p[0] == '/' && p[1] == '>') {
		FUNC8(ctx, parser);
		p += 2;
		goto parse_text;
	}
	return "syntax error in attributes";

parse_attribute_name:
	mark = p;
	while (FUNC0(*p)) ++p;
	FUNC5(ctx, parser, mark, p);
	while (FUNC1(*p)) ++p;
	if (*p == '=') { ++p; goto parse_attribute_value; }
	return "syntax error after attribute name";

parse_attribute_value:
	while (FUNC1(*p)) ++p;
	quote = *p++;
	if (quote != '"' && quote != '\'')
		return "missing quote character";
	mark = p;
	while (*p && *p != quote) ++p;
	if (*p == quote) {
		FUNC6(ctx, parser, mark, p++);
		goto parse_attributes;
	}
	return "end of data in attribute value";
}