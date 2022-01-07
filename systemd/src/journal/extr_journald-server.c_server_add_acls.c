
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_4__ {int path; int fd; } ;
typedef TYPE_1__ JournalFile ;


 int add_acls_for_user (int ,int ) ;
 int assert (TYPE_1__*) ;
 int log_warning_errno (int,char*,int ) ;
 scalar_t__ uid_for_system_journal (int ) ;

__attribute__((used)) static void server_add_acls(JournalFile *f, uid_t uid) {



        assert(f);
}
