#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_5__ {int /*<<< orphan*/  send_flinfo; scalar_t__ use_binary_send; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ DatumSerializer ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ BinaryStringEncoding ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ MESSAGE_SPECIFIES_ENCODING ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

void
FUNC11(DatumSerializer *serializer, BinaryStringEncoding encoding,
							  StringInfo buffer, Datum datum)
{
	FUNC6(serializer);

	if (encoding == MESSAGE_SPECIFIES_ENCODING)
		FUNC7(buffer, serializer->use_binary_send);
	else if (encoding != FUNC4(serializer))
		FUNC5(ERROR, "incorrect encoding chosen in datum_append_to_binary_string");

	if (serializer->use_binary_send)
	{
		bytea *output = FUNC1(&serializer->send_flinfo, datum);
		FUNC9(buffer, FUNC3(output));
		FUNC8(buffer, FUNC2(output), FUNC3(output));
	}
	else
	{
		char *output = FUNC0(&serializer->send_flinfo, datum);
		FUNC10(buffer, output);
	}
}