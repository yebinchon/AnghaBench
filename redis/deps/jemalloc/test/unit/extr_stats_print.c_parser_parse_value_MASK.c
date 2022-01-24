#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int token_type; } ;
struct TYPE_7__ {TYPE_1__ token; } ;
typedef  TYPE_2__ parser_t ;

/* Variables and functions */
#define  TOKEN_TYPE_FALSE 134 
#define  TOKEN_TYPE_LBRACE 133 
#define  TOKEN_TYPE_LBRACKET 132 
#define  TOKEN_TYPE_NULL 131 
#define  TOKEN_TYPE_NUMBER 130 
#define  TOKEN_TYPE_STRING 129 
#define  TOKEN_TYPE_TRUE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC3(parser_t *parser) {
	switch (parser->token.token_type) {
	case TOKEN_TYPE_NULL:
	case TOKEN_TYPE_FALSE:
	case TOKEN_TYPE_TRUE:
	case TOKEN_TYPE_STRING:
	case TOKEN_TYPE_NUMBER:
		return false;
	case TOKEN_TYPE_LBRACE:
		return FUNC2(parser);
	case TOKEN_TYPE_LBRACKET:
		return FUNC1(parser);
	default:
		return true;
	}
	FUNC0();
}