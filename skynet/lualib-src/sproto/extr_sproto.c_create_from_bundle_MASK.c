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
typedef  int /*<<< orphan*/  uint8_t ;
struct sproto {int type_n; int protocol_n; int /*<<< orphan*/ * proto; int /*<<< orphan*/ * type; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int SIZEOF_FIELD ; 
 int /*<<< orphan*/  SIZEOF_HEADER ; 
 int SIZEOF_LENGTH ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct sproto*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct sproto*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct sproto *
FUNC7(struct sproto *s, const uint8_t * stream, size_t sz) {
	const uint8_t * content;
	const uint8_t * typedata = NULL;
	const uint8_t * protocoldata = NULL;
	int fn = FUNC4(stream, sz);
	int i;
	if (fn < 0 || fn > 2)
		return NULL;

	stream += SIZEOF_HEADER;
	content = stream + fn*SIZEOF_FIELD;

	for (i=0;i<fn;i++) {
		int value = FUNC6(stream + i*SIZEOF_FIELD);
		int n;
		if (value != 0)
			return NULL;
		n = FUNC0(content);
		if (n<0)
			return NULL;
		if (i == 0) {
			typedata = content+SIZEOF_LENGTH;
			s->type_n = n;
			s->type = FUNC3(&s->memory, n * sizeof(*s->type));
		} else {
			protocoldata = content+SIZEOF_LENGTH;
			s->protocol_n = n;
			s->proto = FUNC3(&s->memory, n * sizeof(*s->proto));
		}
		content += FUNC5(content) + SIZEOF_LENGTH;
	}

	for (i=0;i<s->type_n;i++) {
		typedata = FUNC2(s, &s->type[i], typedata);
		if (typedata == NULL) {
			return NULL;
		}
	}
	for (i=0;i<s->protocol_n;i++) {
		protocoldata = FUNC1(s, &s->proto[i], protocoldata);
		if (protocoldata == NULL) {
			return NULL;
		}
	}

	return s;
}