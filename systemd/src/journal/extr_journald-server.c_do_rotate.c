
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {char const* path; } ;
struct TYPE_9__ {int threshold_bytes; int enabled; } ;
struct TYPE_10__ {int deferred_closes; TYPE_1__ compress; } ;
typedef TYPE_2__ Server ;
typedef TYPE_3__ JournalFile ;


 int EINVAL ;
 int assert (TYPE_2__*) ;
 int journal_file_rotate (TYPE_3__**,int ,int ,int,int ) ;
 int log_error_errno (int,char*,char const*) ;
 int server_add_acls (TYPE_3__*,int ) ;

__attribute__((used)) static int do_rotate(
                Server *s,
                JournalFile **f,
                const char* name,
                bool seal,
                uint32_t uid) {

        int r;
        assert(s);

        if (!*f)
                return -EINVAL;

        r = journal_file_rotate(f, s->compress.enabled, s->compress.threshold_bytes, seal, s->deferred_closes);
        if (r < 0) {
                if (*f)
                        return log_error_errno(r, "Failed to rotate %s: %m", (*f)->path);
                else
                        return log_error_errno(r, "Failed to create new %s journal: %m", name);
        }

        server_add_acls(*f, uid);

        return r;
}
