
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int state; size_t data_size; size_t field_len; int iovw; } ;
typedef TYPE_1__ JournalImporter ;





 void* IMPORTER_STATE_EOF ;

 int assert (void*) ;
 int assert_not_reached (char*) ;
 int cellescape (char*,int,char*) ;
 int get_data_data (TYPE_1__*,void**) ;
 int get_data_newline (TYPE_1__*) ;
 int get_data_size (TYPE_1__*) ;
 int get_line (TYPE_1__*,char**,size_t*) ;
 int iovw_put (int *,char*,size_t) ;
 int journal_field_valid (char*,int,int) ;
 int log_debug (char*,int ) ;
 int log_trace (char*,...) ;
 char* memchr (char*,char,size_t) ;
 int memmove (char*,char*,size_t) ;
 int process_special_field (TYPE_1__*,char*) ;
 char* strndupa (char*,int) ;

int journal_importer_process_data(JournalImporter *imp) {
        int r;

        switch(imp->state) {
        case 128: {
                char *line, *sep;
                size_t n = 0;

                assert(imp->data_size == 0);

                r = get_line(imp, &line, &n);
                if (r < 0)
                        return r;
                if (r == 0) {
                        imp->state = IMPORTER_STATE_EOF;
                        return 0;
                }
                assert(n > 0);
                assert(line[n-1] == '\n');

                if (n == 1) {
                        log_trace("Received empty line, event is ready");
                        return 1;
                }






                sep = memchr(line, '=', n);
                if (sep) {

                        n--;

                        if (!journal_field_valid(line, sep - line, 1)) {
                                char buf[64], *t;

                                t = strndupa(line, sep - line);
                                log_debug("Ignoring invalid field: \"%s\"",
                                          cellescape(buf, sizeof buf, t));

                                return 0;
                        }

                        line[n] = '\0';
                        r = process_special_field(imp, line);
                        if (r != 0)
                                return r < 0 ? r : 0;

                        r = iovw_put(&imp->iovw, line, n);
                        if (r < 0)
                                return r;
                } else {

                        line[n-1] = '=';

                        imp->field_len = n;
                        imp->state = 129;


                }

                log_trace("Received: %.*s (%s)", (int) n, line, sep ? "text" : "binary");

                return 0;
        }

        case 129:
                assert(imp->data_size == 0);

                r = get_data_size(imp);

                if (r < 0)
                        return r;
                if (r == 0) {
                        imp->state = IMPORTER_STATE_EOF;
                        return 0;
                }

                imp->state = imp->data_size > 0 ?
                        131 : 130;

                return 0;

        case 131: {
                void *data;
                char *field;

                assert(imp->data_size > 0);

                r = get_data_data(imp, &data);

                if (r < 0)
                        return r;
                if (r == 0) {
                        imp->state = IMPORTER_STATE_EOF;
                        return 0;
                }

                assert(data);

                field = (char*) data - sizeof(uint64_t) - imp->field_len;
                memmove(field + sizeof(uint64_t), field, imp->field_len);

                r = iovw_put(&imp->iovw, field + sizeof(uint64_t), imp->field_len + imp->data_size);
                if (r < 0)
                        return r;

                imp->state = 130;

                return 0;
        }

        case 130:
                r = get_data_newline(imp);

                if (r < 0)
                        return r;
                if (r == 0) {
                        imp->state = IMPORTER_STATE_EOF;
                        return 0;
                }

                imp->data_size = 0;
                imp->state = 128;

                return 0;
        default:
                assert_not_reached("wtf?");
        }
}
