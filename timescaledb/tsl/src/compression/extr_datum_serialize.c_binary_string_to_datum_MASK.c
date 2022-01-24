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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_7__ {int /*<<< orphan*/  type_mod; int /*<<< orphan*/  type_io_param; int /*<<< orphan*/  recv_flinfo; } ;
struct TYPE_6__ {char* data; int /*<<< orphan*/  maxlen; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ DatumDeserializer ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int BinaryStringEncoding ;

/* Variables and functions */
#define  BINARY_ENCODING 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  MESSAGE_SPECIFIES_ENCODING 129 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TEXT_ENCODING 128 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

Datum
FUNC7(DatumDeserializer *deserializer, BinaryStringEncoding encoding,
					   StringInfo buffer)
{
	Datum res;
	bool use_binary_recv = false;

	switch (encoding)
	{
		case BINARY_ENCODING:
			use_binary_recv = true;
			break;
		case TEXT_ENCODING:
			use_binary_recv = false;
			break;
		case MESSAGE_SPECIFIES_ENCODING:
			use_binary_recv = FUNC3(buffer) != 0;
			break;
	}

	FUNC2(deserializer, use_binary_recv);

	if (use_binary_recv)
	{
		uint32 data_size = FUNC5(buffer);
		const char *bytes = FUNC4(buffer, data_size);
		StringInfoData d = {
			.data = (char *) bytes,
			.len = data_size,
			.maxlen = data_size,
		};
		res = FUNC1(&deserializer->recv_flinfo,
								  &d,
								  deserializer->type_io_param,
								  deserializer->type_mod);
	}
	else
	{
		const char *string = FUNC6(buffer);
		res = FUNC0(&deserializer->recv_flinfo,
								(char *) string,
								deserializer->type_io_param,
								deserializer->type_mod);
	}
	return res;
}