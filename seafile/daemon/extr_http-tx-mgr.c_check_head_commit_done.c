
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int result ;
struct TYPE_7__ {struct TYPE_7__* token; struct TYPE_7__* host; int user_data; int (* callback ) (TYPE_1__*,int ) ;int error_code; int head_commit; int is_deleted; int is_corrupt; int success; } ;
struct TYPE_6__ {int error_code; int head_commit; int is_deleted; int is_corrupt; int check_success; } ;
typedef TYPE_1__ HttpHeadCommit ;
typedef TYPE_2__ CheckHeadData ;


 int g_free (TYPE_2__*) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void
check_head_commit_done (void *vdata)
{
    CheckHeadData *data = vdata;
    HttpHeadCommit result;

    memset (&result, 0, sizeof(result));
    result.check_success = data->success;
    result.is_corrupt = data->is_corrupt;
    result.is_deleted = data->is_deleted;
    memcpy (result.head_commit, data->head_commit, 40);
    result.error_code = data->error_code;

    data->callback (&result, data->user_data);

    g_free (data->host);
    g_free (data->token);
    g_free (data);
}
