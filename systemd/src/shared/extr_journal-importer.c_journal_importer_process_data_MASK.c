#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int state; size_t data_size; size_t field_len; int /*<<< orphan*/  iovw; } ;
typedef  TYPE_1__ JournalImporter ;

/* Variables and functions */
#define  IMPORTER_STATE_DATA 131 
#define  IMPORTER_STATE_DATA_FINISH 130 
#define  IMPORTER_STATE_DATA_START 129 
 void* IMPORTER_STATE_EOF ; 
#define  IMPORTER_STATE_LINE 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int FUNC3 (TYPE_1__*,void**) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,char**,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char* FUNC11 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,size_t) ; 
 int FUNC13 (TYPE_1__*,char*) ; 
 char* FUNC14 (char*,int) ; 

int FUNC15(JournalImporter *imp) {
        int r;

        switch(imp->state) {
        case IMPORTER_STATE_LINE: {
                char *line, *sep;
                size_t n = 0;

                FUNC0(imp->data_size == 0);

                r = FUNC6(imp, &line, &n);
                if (r < 0)
                        return r;
                if (r == 0) {
                        imp->state = IMPORTER_STATE_EOF;
                        return 0;
                }
                FUNC0(n > 0);
                FUNC0(line[n-1] == '\n');

                if (n == 1) {
                        FUNC10("Received empty line, event is ready");
                        return 1;
                }

                /* MESSAGE=xxx\n
                   or
                   COREDUMP\n
                   LLLLLLLL0011223344...\n
                */
                sep = FUNC11(line, '=', n);
                if (sep) {
                        /* chomp newline */
                        n--;

                        if (!FUNC8(line, sep - line, true)) {
                                char buf[64], *t;

                                t = FUNC14(line, sep - line);
                                FUNC9("Ignoring invalid field: \"%s\"",
                                          FUNC2(buf, sizeof buf, t));

                                return 0;
                        }

                        line[n] = '\0';
                        r = FUNC13(imp, line);
                        if (r != 0)
                                return r < 0 ? r : 0;

                        r = FUNC7(&imp->iovw, line, n);
                        if (r < 0)
                                return r;
                } else {
                        /* replace \n with = */
                        line[n-1] = '=';

                        imp->field_len = n;
                        imp->state = IMPORTER_STATE_DATA_START;

                        /* we cannot put the field in iovec until we have all data */
                }

                FUNC10("Received: %.*s (%s)", (int) n, line, sep ? "text" : "binary");

                return 0; /* continue */
        }

        case IMPORTER_STATE_DATA_START:
                FUNC0(imp->data_size == 0);

                r = FUNC5(imp);
                // log_debug("get_data_size() -> %d", r);
                if (r < 0)
                        return r;
                if (r == 0) {
                        imp->state = IMPORTER_STATE_EOF;
                        return 0;
                }

                imp->state = imp->data_size > 0 ?
                        IMPORTER_STATE_DATA : IMPORTER_STATE_DATA_FINISH;

                return 0; /* continue */

        case IMPORTER_STATE_DATA: {
                void *data;
                char *field;

                FUNC0(imp->data_size > 0);

                r = FUNC3(imp, &data);
                // log_debug("get_data_data() -> %d", r);
                if (r < 0)
                        return r;
                if (r == 0) {
                        imp->state = IMPORTER_STATE_EOF;
                        return 0;
                }

                FUNC0(data);

                field = (char*) data - sizeof(uint64_t) - imp->field_len;
                FUNC12(field + sizeof(uint64_t), field, imp->field_len);

                r = FUNC7(&imp->iovw, field + sizeof(uint64_t), imp->field_len + imp->data_size);
                if (r < 0)
                        return r;

                imp->state = IMPORTER_STATE_DATA_FINISH;

                return 0; /* continue */
        }

        case IMPORTER_STATE_DATA_FINISH:
                r = FUNC4(imp);
                // log_debug("get_data_newline() -> %d", r);
                if (r < 0)
                        return r;
                if (r == 0) {
                        imp->state = IMPORTER_STATE_EOF;
                        return 0;
                }

                imp->data_size = 0;
                imp->state = IMPORTER_STATE_LINE;

                return 0; /* continue */
        default:
                FUNC1("wtf?");
        }
}